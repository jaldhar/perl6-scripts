#!/usr/bin/perl6

# Think Perl6 Exercise 9.3

sub middle(@array) {
    return @array[1 .. *-2];
}


say middle((1, 2, 3, 4));
