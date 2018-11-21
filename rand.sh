#! /bin/sh

MAXNUM=65534

get_rand() {

  local bound=$1
  local i=65535

  while [ ! $i -lt $bound ] || [ $i -gt $MAXNUM ]; do
    i=`head /dev/urandom | env LC_CTYPE=C tr -cd '0-9' | head -c 2`
  done

  echo "$i"

}

KEY=`get_rand 59`
echo "${KEY}"
