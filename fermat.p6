#!/usr/bin/perl6

# Think Perl6 Exercise 4.2

sub check-fermat(Int $a, Int $b, Int $c, int $n) {

    if ($a ** $n + $b ** $n == $c ** $n and $n > 2) {
        say 'Holy smokes, Fermat was wrong!';
    } else {
        say "No, that doesn't work.";
    }
}


#seconds2dhms(240_000);

sub MAIN() {
    say "we are trying to determine if there are any integers a, b, c such that\n",
    "a^n + b^n =  c^n where n is greater than 2.";

    my Str $a = prompt 'Enter a value for a: ';
    my Str $b = prompt 'Enter a value for b: ';
    my Str $c = prompt 'Enter a value for c: ';
    my Str $n = prompt 'Enter a value for n: ';
    check-fermat($a.Int, $b.Int, $c.Int, $n.Int);
}
