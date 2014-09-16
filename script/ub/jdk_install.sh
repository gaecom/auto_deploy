#!/bin/bash


inst_jdk8() {
	jdkdir=`dezip_pkg $jdk8`
	sudo mv $jdkdir /usr/local/jdk`ls|grep jdk|cut -d"-" -f2|cut -d"u" -f1`
}

