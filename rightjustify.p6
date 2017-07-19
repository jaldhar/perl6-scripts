#!/usr/bin/perl6

# Think Perl6 Exercise 3.1

sub right-justify(Str $string) {
    my Int $line-length = 70;
    my Int $string-length = $string.chars;
    say (' ' x $line-length - $string-length) ~ $string;
}

right-justify('Larry Wall');
