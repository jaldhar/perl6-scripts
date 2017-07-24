#!/usr/bin/perl6

# Think Perl6 Exercise 5.5

sub gcd(Int $a where $a > 0, Int $b where $b > 0) {

    if $a == 0 {
        return $a;
    }

    if $b == 0 {
        return $b;
    }

    return gcd($b, $a mod $b);
}
