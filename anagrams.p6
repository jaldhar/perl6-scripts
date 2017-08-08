#!/usr/bin/perl6

# Think Perl6 Exercise 9.6

sub is-anagram(Str $first, Str $second) {
    return $first.comb.sort eq $second.comb.sort;
}


say is-anagram('robert', 'trebor');
say is-anagram('robert', 'robots');
say is-anagram('jaldharvyas', 'slyhardjava');
