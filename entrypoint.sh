#!/bin/bash

if [ -z $1 ]; then
  exec "$@"
else
  if [[ $(rancher help  | sed "s/, /,/" | grep "^  " | awk '{print $1}' | grep -w -e $1 | wc -c) -ne 0 ]]; then
    rancher $@
  else
    exec "$@"
  fi
fi