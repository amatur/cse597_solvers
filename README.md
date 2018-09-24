# psu_cse597-002F18_report1

# Basic Info

Author: Amatur Rahman

Date: Sept 24, 2018

Please see license.txt for licensing information


PSU CSE 597-002, Fall 2018

Progress Report 1

# Description of files 
cycleThrough.sh - The shell script to iterate through all of the optimization flags to find out the best one.

gpl.txt, license.txt - Licensing information

main.cpp - source file containing Jacobi and LU decomposition solver

Makefile - makefile for generating executable main.out


# Compilation instructions for ACI
module load gcc/5.3.1

make

./main.out

# This should output
Total ticks taken by CPU for Forward Substitution: 3
Total ticks taken by CPU for Backward Substitution: 3
Total ticks taken by CPU for LU Decomposition: 72
Total ticks taken by CPU for Jacobi: 115

# In order to find the optimization flags
./cycleThrough.sh


