#!/bin/sh

#script perfom rpm system by riccardopirani.altervista.org

yum check-update
yum update
yum upgrade
yum clean all
rm -rf /var/cache/yum
