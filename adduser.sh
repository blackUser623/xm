#!/bin/bash
useradd -m  nobody
echo nobody:'test123'|chpasswd
