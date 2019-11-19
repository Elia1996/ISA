#!/bin/bash
column -s, -t < results_c.csv > res_c.txt
column -s, -t < results_v.csv > res_v.txt
paste res_c.txt res_v.txt

