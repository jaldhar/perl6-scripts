#!/usr/bin/perl6

# Think Perl6 Exercise 8.2

sub has-no-e(Str $word) {
    return $word.index('e') ~~ Nil;
}

sub MAIN {
    my Int $no-e = 0;
    my Int $total = 0;

    for 'words.txt'.IO.lines -> $line {
        if has-no-e($line) {
            say $line;
            $no-e++;
        }
        $total++;
    }

    say (($no-e / $total) * 100).fmt('%.4f%%'),
        ' of words have no letter e in them.';
}
