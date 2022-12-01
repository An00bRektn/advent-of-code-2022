#!/usr/bin/env bash

day=$1
if [[ "$day" == "" ]]; then
    echo "[!] Error: No number provided"
    echo "Usage: ./setup.sh DAY"
    exit
fi

if [[ $((day)) != $day ]]; then
    echo "[!] Error: Input is not an integer"
    echo "Usage: ./setup.sh DAY"
    exit
fi

folder="./day-$1"
mkdir folder
wget "https://adventofcode.com/2022/day/$1/input" -O "./$folder/input.txt"
touch $folder/main.go
