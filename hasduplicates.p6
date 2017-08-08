#!/usr/bin/perl6

# Think Perl6 Exercise 9.7

sub has-duplicates(*@array) {
    return ![!=] @array.sort;
}


say has-duplicates(1, 2, 2);
say has-duplicates(1, 2, 3);
