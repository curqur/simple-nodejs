#!/bin/sh

npm start &
sleep 1
echo $! > .pidfile