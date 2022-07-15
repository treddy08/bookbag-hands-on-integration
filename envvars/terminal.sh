#!/bin/sh

# Environment variables to set for the terminal

curl -L https://github.com/apache/camel-k/releases/download/v1.9.2/camel-k-client-1.9.2-linux-64bit.tar.gz | tar xzvf -
mv kamel /usr/local/bin
