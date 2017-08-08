#!/usr/bin/perl6

# Think Perl6 Exercise 9.9

sub use-push() {
    my @array;
    for 'words.txt'.IO.lines -> $line {
        @array.push($line);
    }
}

sub use-unshift() {
    my @array;
    for 'words.txt'.IO.lines -> $line {
        @array.unshift($line);
    }
}

sub MAIN {
    # prime cache
    for 'words.txt'.IO.lines -> $line {
    }

    for 1 .. 10 {
        use-unshift();
    }
    say 'unshift done';

    # push version is faster.  Because it is not reallocating the array as much.
    for 1 .. 10 {
        use-push();
    }
    say 'push done';
}
