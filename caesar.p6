#!/usr/bin/perl6

# Think Perl6 Exercise 7.3

sub rotate-word(Str $message, Int $rot) {

    return join '', $message.comb.map: {
        my $c = ord $_;
        if $_ ~~ /<[a..z]>/ {
            chr((ord 'a') + (($c - (ord 'a') + $rot) % 26));
        } elsif $_ ~~ /<[A..Z]>/ {
            chr((ord 'A') + (($c - (ord 'A') + $rot) % 26));
        } else {
            $_;
        }
    }
}

sub rot13(Str $message) {
    return rotate-word $message, 13;
}

say rotate-word 'z', 1;
say rotate-word 'Z', 1;
say rotate-word 'a', -1;
say rotate-word 'A', -1;
say rotate-word 'melon', -10;
say rotate-word 'cheer', 7;
say rotate-word 'IBM', -1;

say rot13("Fbzr cebsnavgl");

