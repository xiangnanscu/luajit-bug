#!/bin/bash

for ((i=1; i<=50; i++))
do
  resty -I lualib  ./test.lua
done
