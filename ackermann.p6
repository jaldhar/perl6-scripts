#!/usr/bin/perl6

# Think Perl6 Exercise 5.2

sub ack(Int $m where $_ >= 0, Int $n where $_ >= 0) {
    if ($m == 0) {
        return $n + 1;
    } else {
        if ($n == 0) {
            return ack($m - 1, 1);
        }
        return ack($m - 1, ack($m, $n - 1));
    }
}


say ack(3, 4);
