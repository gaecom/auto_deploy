#!/bin/bash
. pkgs.sh
. common.sh
inst_pkg $node
npm install -g socket.io redis hiredis lodash
echo ->package.json<<EOF

{
        "name": "niuspace",
        "description": "signal server for video collaration",
        "main": "./lib/buffalo",
        "author": {
            "name": "chjade",
            "email":"ifa6@qq.com",
            "url" : "http://twitter.com/ifa6@qq.com"
    
        },
        "version": "0.2.0",
        "homepage":"https://github.com/gaecom/p2pserver",
        "bugs": {
            "url": "https://github.com/gaecom/p2pserver/issues"
        },
        "engines" : { "npm" : "~0.8.0" },
        "repository" :
        { "type" : "git"
            ,"url" : "http://github.com/gaecom/p2pserver.git"
        },
        "scripts": {"start": "node server.js"},
        "repository" :
        {   "type" : "svn"
            , "url" : "http://v8.googlecode.com/svn/trunk/"
        },
        "licenses": [
            {
                "type": "MIT",
                "url": "https://github.com/gaecom/raw/master/LICENSE"
            },
            {
                "type":"BSD-3-Clause"
            }
        ],
        "devDependencies": {
            "nodeunit": ">0.0.0",
            "uglify-js": "1.2.x",
            "nodelint": ">0.0.0"
        },
        "dependencies":{
                "body-parser": "^1.3.0",
        "cookie-parser": "^1.1.0",
        "express": "^4.4.1",
        "jade": "^1.3.1",
        "morgan": "^1.1.1",
        "opts": "^1.2.2",
        "socket.io": "^1.0.4",
        "socket.io-redis": "^0.1.3",
            "websocket":">=1.0.8",
            "sleep":">=0.1",
            "art-template":">=3.0.0",
            "websocket-over-nodejs":">=0.0.2",
            "lodash":">=1.3.1",
            "forever":">=0.11.1",
            "domain":">=0.2.8",
            "redis":">=0.9.0",
            "hiredis":">=0.1.15",
            "cluster":">=0.7.7",
            "express":"3.0.0 - 4.1.1",
            "nodemailer":">=0.6.0",
            "log4js":">=0.6.0",
            "socket.io":"^0.9.16",
            "socket.io-client":">=0.1",
            "socket.io-parser":"^2.2.0",
            "lodash-node":">=2.4.1",
            "debug":"^1.2.2",
            "has-binary-data":"^0.1.3",
            "socket.io-adapter":"0.3.0"
        },
        "scripts": {
            "test": "nodeunit test/test-buffalo.js"
        },
        "readme": " ",
        "readmeFilename": "README.md",
        "_id": "buffalo@0.2.0",
        "_from": "buffalo@0.2.x"
    }
EOF
