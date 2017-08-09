#!/usr/bin/perl6

# Think Perl6 Exercise 9.10

sub bisect(@words, Str $word, Int $from, Int $to) {

    my Int $mid = ($from + $to) div 2;
    
    if @words[$mid] eq $word {
        return True;
    }

    if $mid == $from {
        return False;
    }

    if $word lt @words[$mid] {
        return bisect(@words, $word, $from, $mid);
    } else {
        return bisect(@words, $word, $mid + 1, $to);
    }    
}

sub MAIN {
    my @words;
    for 'words.txt'.IO.lines -> $word {
        @words.push($word);
    }

    say bisect(@words, $^ARGS[0], 0, @words.elems - 1);
}
