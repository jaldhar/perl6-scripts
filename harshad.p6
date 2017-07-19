#!/usr/bin/perl6
# Takes a positive integer and prints true if it is a Harshad number (i.e. 
# divisible by the sum of its digits) or false if it is not.


sub MAIN(Int $integer where $_ > 0) { say $integer %% $integer.split('').sum }
