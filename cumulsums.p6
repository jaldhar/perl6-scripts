#!/usr/bin/perl6

# Think Perl6 Exercise 9.2

sub cumul-sum(@array) {
    return [\+] @array;
}


my @nums = [1, 2, 3, 4];
say cumul-sum(@nums);
