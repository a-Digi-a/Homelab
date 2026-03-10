#!/bin/bash

now=`date +"%Y-%m-%d %T"`
printf "%s\n---\n" "$now"
for dir in ./*; do 
    if [[ -d "$dir" && ${dir} != *"disabled"* ]]; then
        cd "$dir"
        /usr/bin/docker compose up -d 
        cd ..
    fi
done
