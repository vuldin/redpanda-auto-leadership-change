#!/bin/bash

while true
do
  for ID in {0..2}
  do
    rpk cluster maintenance enable $ID
    sleep 1
    rpk cluster maintenance disable $ID
  done
done

