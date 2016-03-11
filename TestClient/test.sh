#!/bin/bash

response=$(curl -s http://$1:$2)
if [ "$response" == "sugar magnolia" ]; then
  echo "success!"
  exit 0
fi
echo "failed!"
exit 1
