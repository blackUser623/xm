#!/bin/bash
useradd -m  nobody2
echo nobody2:'test123'|chpasswd
