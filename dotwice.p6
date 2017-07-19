#!/usr/bin/perl6

# Think Perl6 Exercise 3.1

multi sub do-twice($code) {
    $code();
    $code();
}

sub greet() {
    say "Hello World!";
}

do-twice(&greet);
say '';

multi sub do-twice($code, $value) {
    $code($value);
    $code($value);
}

sub print-twice($value) {
    say $value;
    say $value;
}

do-twice(&print-twice, "What's up doc?");
say '';

sub do-four($code, $value) {
    do-twice($code, $value);
    do-twice($code, $value);
}

do-four(&print-twice, "What's up doc?");
say '';
