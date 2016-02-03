#!/bin/bash
#[ $# -lt 1 ] && echo "$0 ipaddress(for vpn)" && exit
#open port for specific ip
#iptables -I INPUT -p udp -s 10.1.0.0/16 --dport 53 -j ACCEPT
#iptables -I INPUT -p udp -s 0.0.0.0/0 --dport 53 -j DROP



iptables -A INPUT -p tcp -m multiport --dport 80,22,1723,443 -j ACCEPT
iptables -I INPUT -p gre -j ACCEPT
#允许loopback!(不然会导致DNS无法正常关闭等问题,并且网站访问很慢)
iptables -I INPUT -i lo -p all -j ACCEPT
iptables -I OUTPUT -j ACCEPT

iptables -A INPUT  -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#dns
iptables -A OUTPUT -o eth0 -p udp -m udp --dport 53 -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT
#time server port
iptables -A OUTPUT -p udp --dport 123 --sport 123 -j ACCEPT

#处理IP碎片数量,防止攻击,允许每秒100个
iptables -I FORWARD -f -m limit --limit 100/s --limit-burst 100 -j ACCEPT
iptables -A FORWARD -p tcp --syn -s 172.16.36.0/24 -j TCPMSS --set-mss 1356

iptables -A FORWARD -p TCP ! --syn -m state --state NEW -j DROP

iptables -A INPUT -j DROP



#for pptpd
#
#prevent dos
iptables -A INPUT -p tcp --dport 80 -m limit --limit 30/minute --limit-burst 100 -j ACCEPT

iptables -A OUTPUT -p tcp -m tcp -j ACCEPT

# iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -I FORWARD  -j ACCEPT
# iptables -t nat -A POSTROUTING -j SNAT --to-source 14.136.247.13

## enable ping
#iptables –A INPUT –p icmp –icmp-type echo-reply –j ACCEPT  
#iptables –A OUTPUT –p icmp –icmp-type echo-request –j ACCEPT 

##
#iptables –A INPUT –i lo –p all –j ACCEPT  
#iptables –A OUTPUT –o lo –p all –j ACCEPT 
/etc/init.d/iptables save

service iptables restart




# Modify this file accordingly for your specific requirement.
# http://www.thegeekstuff.com
# 1. Delete all existing rules
# iptables -F

# # 2. Set default chain policies
# iptables -P INPUT DROP
# iptables -P FORWARD DROP
# iptables -P OUTPUT DROP

# # 3. Block a specific ip-address
# #BLOCK_THIS_IP="x.x.x.x"
# #iptables -A INPUT -s "$BLOCK_THIS_IP" -j DROP

# # 4. Allow ALL incoming SSH
# #iptables -A INPUT -i eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
# #iptables -A OUTPUT -o eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# # 5. Allow incoming SSH only from a sepcific network
# #iptables -A INPUT -i eth0 -p tcp -s 192.168.200.0/24 --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
# #iptables -A OUTPUT -o eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# # 6. Allow incoming HTTP
# #iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
# #iptables -A OUTPUT -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT

# # Allow incoming HTTPS
# #iptables -A INPUT -i eth0 -p tcp --dport 443 -m state --state NEW,ESTABLISHED -j ACCEPT
# #iptables -A OUTPUT -o eth0 -p tcp --sport 443 -m state --state ESTABLISHED -j ACCEPT

# # 7. MultiPorts (Allow incoming SSH, HTTP, and HTTPS)
# iptables -A INPUT -i eth0 -p tcp -m multiport --dports 22,80,443 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp -m multiport --sports 22,80,443 -m state --state ESTABLISHED -j ACCEPT

# # 8. Allow outgoing SSH
# iptables -A OUTPUT -o eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A INPUT -i eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# # 9. Allow outgoing SSH only to a specific network
# #iptables -A OUTPUT -o eth0 -p tcp -d 192.168.101.0/24 --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
# #iptables -A INPUT -i eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# # 10. Allow outgoing HTTPS
# iptables -A OUTPUT -o eth0 -p tcp --dport 443 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A INPUT -i eth0 -p tcp --sport 443 -m state --state ESTABLISHED -j ACCEPT

# # 11. Load balance incoming HTTPS traffic
# #iptables -A PREROUTING -i eth0 -p tcp --dport 443 -m state --state NEW -m nth --counter 0 --every 3 --packet 0 -j DNAT --to-destination 192.168.1.101:443
# #iptables -A PREROUTING -i eth0 -p tcp --dport 443 -m state --state NEW -m nth --counter 0 --every 3 --packet 1 -j DNAT --to-destination 192.168.1.102:443
# #iptables -A PREROUTING -i eth0 -p tcp --dport 443 -m state --state NEW -m nth --counter 0 --every 3 --packet 2 -j DNAT --to-destination 192.168.1.103:443

# # 12. Ping from inside to outside
# iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT
# iptables -A INPUT -p icmp --icmp-type echo-reply -j ACCEPT

# # 13. Ping from outside to inside
# iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
# iptables -A OUTPUT -p icmp --icmp-type echo-reply -j ACCEPT

# # 14. Allow loopback access
# iptables -A INPUT -i lo -j ACCEPT
# iptables -A OUTPUT -o lo -j ACCEPT

# # 15. Allow packets from internal network to reach external network.
# # if eth1 is connected to external network (internet)
# # if eth0 is connected to internal network (192.168.1.x)
# iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT

# # 16. Allow outbound DNS
# #iptables -A OUTPUT -p udp -o eth0 --dport 53 -j ACCEPT
# #iptables -A INPUT -p udp -i eth0 --sport 53 -j ACCEPT

# # 17. Allow NIS Connections
# # rpcinfo -p | grep ypbind ; This port is 853 and 850
# #iptables -A INPUT -p tcp --dport 111 -j ACCEPT
# #iptables -A INPUT -p udp --dport 111 -j ACCEPT
# #iptables -A INPUT -p tcp --dport 853 -j ACCEPT
# #iptables -A INPUT -p udp --dport 853 -j ACCEPT
# #iptables -A INPUT -p tcp --dport 850 -j ACCEPT
# #iptables -A INPUT -p udp --dport 850 -j ACCEPT

# # 18. Allow rsync from a specific network
# iptables -A INPUT -i eth0 -p tcp -s 192.168.101.0/24 --dport 873 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 873 -m state --state ESTABLISHED -j ACCEPT

# # 19. Allow MySQL connection only from a specific network
# iptables -A INPUT -i eth0 -p tcp -s 192.168.200.0/24 --dport 3306 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 3306 -m state --state ESTABLISHED -j ACCEPT

# # 20. Allow Sendmail or Postfix
# iptables -A INPUT -i eth0 -p tcp --dport 25 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 25 -m state --state ESTABLISHED -j ACCEPT

# # 21. Allow IMAP and IMAPS
# iptables -A INPUT -i eth0 -p tcp --dport 143 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 143 -m state --state ESTABLISHED -j ACCEPT

# iptables -A INPUT -i eth0 -p tcp --dport 993 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 993 -m state --state ESTABLISHED -j ACCEPT

# # 22. Allow POP3 and POP3S
# iptables -A INPUT -i eth0 -p tcp --dport 110 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 110 -m state --state ESTABLISHED -j ACCEPT

# iptables -A INPUT -i eth0 -p tcp --dport 995 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 995 -m state --state ESTABLISHED -j ACCEPT

# # 23. Prevent DoS attack
# iptables -A INPUT -p tcp --dport 80 -m limit --limit 25/minute --limit-burst 100 -j ACCEPT

# # 24. Port forwarding 422 to 22
# iptables -t nat -A PREROUTING -p tcp -d 192.168.102.37 --dport 422 -j DNAT --to 192.168.102.37:22
# iptables -A INPUT -i eth0 -p tcp --dport 422 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 422 -m state --state ESTABLISHED -j ACCEPT

# # 25. Log dropped packets
# iptables -N LOGGING
# iptables -A INPUT -j LOGGING
# iptables -A LOGGING -m limit --limit 2/min -j LOG --log-prefix "IPTables Packet Dropped: " --log-level 7
# iptables -A LOGGING -j DROP
# 1
# iptables -L -v
# 2-packets-processed

# 上图是对一台已经运行了几个星期的服务器的截图。这台服务器没有对输入和输出做任何限制。从中可以看到，输入链和输出链已经分别处理了11GB和17GB的数据，而转发链则没有处理任何数据。这是因为此服务器没有开启类似于路由器的转发功能。

# 输出——这条链用来过滤源地址是本机的连接。例如，当你尝试ping howtogeek.com时，iptables会检查输出链中与ping和howtogeek.com相关的规则，然后决定允许还是拒绝你的连接请求。

# 注意：当ping一台外部主机时，看上去好像只是输出链在起作用。但是请记住，外部主机返回的数据要经过输入链的过滤。当配置iptables规则时，请牢记许多协议都需要双向通信，所以你需要同时配置输入链和输出链。人们在配置SSH的时候通常会忘记在输入链和输出链都配置它。

# 链的默认行为

# 在配置特定的规则之前，也许你想配置这些链的默认行为。换句话说，当iptables无法匹配现存的规则时，你想让它作出何种行为。
# 你可以运行如下的命令来显示当前iptables对无法匹配的连接的默认动作：

# Shell

# 1
# iptables -L
# 3-policy-setting

# 正如上面所显示的，我们可以使用grep来使输出的结果变得更加简洁。在上面的截图中，所有的链默认情况下均接受所有的连接。
# 通常情况下，你会希望你的系统默认情况下接收所有的网络数据。这种设定也是iptables的默认配置。接收网络连接的配置命令是：

# Shell

# 1
# 2
# 3
# iptables --policy INPUT ACCEPT
# iptables --policy OUTPUT ACCEPT
# iptables --policy FORWARD ACCEPT

# 下面来看看如何对特定的IP地址或端口作出设定。本文主要介绍三种最基本和常见的设定。
# Accept – 接收所有的数据。
# Drop – 丢弃数据。应用场景：当你不想让数据的来源地址意识到你的系统的存在（最好的处理方法）。
# Reject – 不允许建立连接，但是返回一个错误回应。应用场景：当你不想让某个IP地址访问你的系统，但又想让它们知道你的防火墙阻止了其访问。
# 为了直观的区分上述三种情况，我们使用一台PC来ping一台配置了iptables的Linux电脑：
# 允许访问
# 4-accept

# 丢弃访问
# 5-drop

# 拒绝访问
# 6-reject

# 允许或阻止特定的连接

# 在配置完基本的规则链之后，你就可以配置iptables来允许或者阻止特定的IP地址或者端口。
# 注意：在这些例子中，我们使用iptables -A将额外的规则添加到现存的链中。Iptables在执行匹配的时候，会从列表的顶端开始搜索。你可以使用iptables -I [chain] [number]将新的规则插入到列表的指定位置。

# 来自同一IP地址的连接
# 下面这个例子展示了如何阻止来自IP地址为10.10.10.10的所有连接。

# Shell

# 1
# iptables -A INPUT -s 10.10.10.10 -j DROP
# 来自一组IP地址的连接
# 下面这个例子展示了如何阻止来自子网10.10.10.0/24内的任意IP地址的连接。你可以使用子网掩码或者标准的/符号来标示一个子网：

# Shell

# 1
# iptables -A INPUT -s 10.10.10.0/24 -j DROP
# 或

# Shell

# 1
# iptables -A INPUT -s 10.10.10.0/255.255.255.0 -j DROP
# 特定端口的连接
# 这个例子展示了如何阻止来自10.10.10.10的SSH连接。

# Shell
# 了直观的区分上述三种情况，我们使用一台PC来ping一台配置了iptables的Linux电脑：
# 允许访问
# 4-accept
# sent 4 reciver 4 lost 0

# 丢弃访问
# 5-drop
# sent 4 reciver 0 lost 0

# 拒绝访问
# 6-reject
# sent 4 reciver 4 lost 0
# 允许或阻止特定的连接
# 1
# iptables -A INPUT -p tcp --dport ssh -s 10.10.10.10 -j DROP
# 你可以将“ssh”替换成其它任何协议或者端口号。上述命令中的-p tcp告诉iptables连接使用的是何种协议。
# 下面这个例子展示了如何阻止来自任意IP地址的SSH连接。

# Shell

# 1
# iptables -A INPUT -p tcp --dport ssh -j DROP
# 连接状态

# 我们之前提到过，许多协议均需要双向通信。例如，如果你打算允许SSH连接，你必须同时配置输入和输出链。但是，如果你只想允许来自外部的SSH请求，那该怎么做？
# 下面这个例子展示了如何允许源IP地址为10.10.10.10同时阻止目的地址为10.10.10.10的SSH连接：

# Shell

# 1
# 2
# iptables -A INPUT -p tcp --dport ssh -s 10.10.10.10 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -p tcp --sport 22 -d 10.10.10.10 -m state --state ESTABLISHED -j ACCEPT