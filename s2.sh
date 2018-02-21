#!/bin/bash
echo "filename"
read filename
echo "enter the word to find"
read word1
grep -A2 $word1 $filename

