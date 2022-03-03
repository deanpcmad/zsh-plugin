#!/bin/bash

name=$1
port=$2

ssh -p 222 -tR $name:80:localhost:$port web.deanlabs.net