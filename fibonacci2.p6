#!/usr/bin/perl6

# Think Perl6 Exercise 4.4.2

sub fibonacci(Int $n) {
    if ($n < 3) {
        return 1;
    }

    return fibonacci($n - 1) + fibonacci($n - 2);
}

sub MAIN() {

    my Str $n = prompt 'Enter a positive integer: ';
    my Int $answer;

    for 1 .. $n.Int -> $i {
        $answer = fibonacci($i);
    }

    say $answer;
}
