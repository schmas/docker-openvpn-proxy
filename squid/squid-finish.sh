#!/bin/sh

if [ $1 -ne 0 ]; then
    echo "Error starting SQUID!"
    kill-all-processes
fi