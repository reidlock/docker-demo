#!/bin/bash

echo $1
echo $2
test=$(curl http://$1:$2)
if [ "$test" == "booger" ]; then
  echo "success!"
  exit 0
fi
echo "failed!"
exit 1
