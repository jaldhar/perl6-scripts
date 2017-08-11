#!/usr/bin/perl6

# Think Perl6 Exercise 10.1

sub MAIN {
    my %words;

    for 'words.txt'.IO.lines -> $word {
        %words{$word} = 1;
    }

    say %words{$^ARGS[0]}:exists;
}
