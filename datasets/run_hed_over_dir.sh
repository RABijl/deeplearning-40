#!/bin/bash
# download the weights and python file from: https://github.com/sniklaus/pytorch-hed and place in same directory
files= cars/trainA_test/*.jpg
for f in $files
do
  echo "Processing $f file..."
  python run.py --model bsds500 --in "$f" --out "cars/trainB/$(basename -- "$f")"
done
