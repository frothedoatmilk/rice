#!/bin/bash
CONKY_FILES=/home/cheeseburger/Documents/riced/conky/.conky-*

sleep 4
for config in ${CONKY_FILES}
do
  conky -d -c ${config} --display=:0
done

kill -STOP $$
