#!/usr/bin/perl6

# Think Perl6 Exercise 10.3

sub has-duplicates(*@array) {
    my %dups;

    for @array -> $item {
        if %dups{$item}:exists {
            return True;
        }
        %dups{$item} = 1;
    }

    return False;
}


say has-duplicates(1, 2, 2);
say has-duplicates(1, 2, 3);
