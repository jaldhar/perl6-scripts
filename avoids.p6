#!/usr/bin/perl6

# Think Perl6 Exercise 8.3

sub avoids(Str $word, Str $forbidden) {
    for $forbidden.comb -> $c {
        if  $word.index($c) {
            return False;
        }
    }
    return True;
}

sub MAIN {
    my Int $no-forbidden = 0;
    my Int $total = 0;

    for 'words.txt'.IO.lines -> $line {
        if avoids($line, 'siou') {
            say $line;
            $no-forbidden++;
        }
        $total++;
    }

    say (($no-forbidden / $total) * 100).fmt('%.4f%%'),
        ' of words have no forbidden letters in them.';
}
