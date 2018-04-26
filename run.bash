#!/bin/bash

while IFS="" read -r a; do
tar xvf $a -C $(echo $a | awk -F'.' '{print $1}')
done < $1
