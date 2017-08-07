#!/usr/bin/perl6

# Think Perl6 Exercise 9.1

sub nested-sum(@array) {
    return [+] map { [+] $_ }, @array;
}


my @AoA = [[1,2], [3], [4, 5, 6]];
say nested-sum(@AoA);
