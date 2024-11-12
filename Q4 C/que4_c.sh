#!/bin/bash
input_file="heart.csv"
output_file="que4_c.csv"
awk -F, '$8 == 0 {print $1 "," $5}' $input_file > $output_file
