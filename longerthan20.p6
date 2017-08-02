#!/usr/bin/perl6

# Think Perl6 Exercise 8.1

for 'words.txt'.IO.lines -> $line {
    if $line.chars > 20 {
        say $line;
    }
}
