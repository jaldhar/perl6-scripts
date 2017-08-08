#!/usr/bin/perl6

# Think Perl6 Exercise 9.5

sub is-sorted(*@array) {
    return [<=] @array;
}


say is-sorted(1, 2, 2);
say is-sorted(1, 2, 1);
