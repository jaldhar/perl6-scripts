#!/usr/bin/perl6

# Think Perl6 Exercise 4.3

sub is-triangle(Int $a, Int $b, Int $c) {

    return $a <= $b + $c && $b <= $a + $c && $c <= $a + $b; 
}


#seconds2dhms(240_000);

sub MAIN() {
    my Str $a = prompt 'Enter the length of side a: ';
    my Str $b = prompt 'Enter the length of side b: ';
    my Str $c = prompt 'Enter the length of side c: ';
    say is-triangle($a.Int, $b.Int, $c.Int) ?? 'Yes' !! 'No';
}
