#!/usr/bin/perl6

# Think Perl6 Exercise 6.2

sub factorial(Int $n) {
    if $n == 0 {
        return 1;
    }

    return $n * factorial($n-1);
}

sub estimate-pi {
    my $k = 0;
    my $sum = 0;

    while True {
        my $series +=
            (2 * sqrt(2) / 9801) *
            (factorial(4 * $k) * (1103 + 26390 *$k)) /
            (factorial($k)**4 * 396**(4*$k));
        
        if abs($series) < 1e-15 {
            last;
        }

        $sum += $series;
        $k++;
    }
    return 1 / $sum;
}

say estimate-pi();
