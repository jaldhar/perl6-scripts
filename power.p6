#!/usr/bin/perl6

# Think Perl6 Exercise 5.4

sub is-power-of(Int $a where $a > 0, Int $b where $b > 0) {

    if $a == $b {
        return True;
    }

    if $a % $b {
        return False;
    }

    return is-power-of($a div $b, $b);
}

say is-power-of(36, 6);
say is-power-of(36, 7);
say is-power-of(37, 6);
say is-power-of(81, 3);
