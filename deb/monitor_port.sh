#!/bin/bash


#by riccardopirani.it

#simple monitor port

iftop -i ens160 -f "dst port 8080"
