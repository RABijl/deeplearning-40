#!/bin/bash
# download the weights and python file from: https://github.com/sniklaus/pytorch-hed and place in same directory
datasetdir=cars_small
for f in $datasetdir/trainA_test/*.jpg
do
  echo "Processing $f file..."
  python run.py --model bsds500 --in "$f" --out "$datasetdir/trainB_test/$(basename -- "$f")"
done
