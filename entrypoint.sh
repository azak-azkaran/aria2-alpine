#!/bin/ash

echo "creating configuration"
confd -onetime -backend env

echo "starting aria2"
aria2c --conf-path=/opt/aria2/aria2.conf
