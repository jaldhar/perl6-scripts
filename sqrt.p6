#!/usr/bin/perl6

# Think Perl6 Exercise 6.1

sub my-sqrt($a, $x is copy) {
    while True {
        my $y = ($x + $a / $x) / 2;

        if $y == $x {
            last;
        }

        $x = $y;
    }

    return $x;
}

say "a\tmy-sqrt(a)\tsqrt(a)\t\tdiff";
for 1 .. 9 -> $a {
    my $mine = my-sqrt($a, 3);
    my $system = sqrt($a);
    say "$a\t", $mine.fmt('%f'), "\t", $system.fmt('%f'), "\t",
        ($mine - $system).fmt('%f');
}
