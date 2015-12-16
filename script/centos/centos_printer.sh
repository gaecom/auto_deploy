#!/bin/bash
set -e -v
. common.sh

yum install gutenprint-cups foomatic hplip hpijs

inst_pkg $foo2zjs
make cups


