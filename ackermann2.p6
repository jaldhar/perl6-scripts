#!/usr/bin/perl6

# Think Perl6 Exercise 10.2

sub ack(Int $m where $_ >= 0, Int $n where $_ >= 0) {
    state %mvals;

    if $m == 0 {
        return $n + 1;
    }

    if ($n == 0) {
        return ack($m - 1, 1);
    }

    if %mvals{$m}{$n}:!exists {
        %mvals{$m}{$n} = ack($m - 1, ack($m, $n - 1));
    }

    return %mvals{$m}{$n};
}

say ack(3, 4);
