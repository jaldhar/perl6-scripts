#!/usr/bin/perl6

# Think Perl6 Exercise 4.4.1

sub fibonacci(Int $n) {
    if ($n < 3) {
        return 1;
    }

    return fibonacci($n - 1) + fibonacci($n - 2);
}

sub MAIN() {
    for 1 .. 20 -> $n {
        print fibonacci($n), ' ';
    }

    print "\n";
}
