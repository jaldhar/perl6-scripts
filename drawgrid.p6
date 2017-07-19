#!/usr/bin/perl6

sub draw-horizontal(Int $boxes) {
    say ('+' ~ '-' x 5) x $boxes, '+';
}

sub draw-vertical(Int $boxes) {
    say ('|' ~ ' ' x 5) x $boxes, '|';
}


sub draw-grid-row(Int $boxes) {
    draw-horizontal($boxes);
    draw-vertical($boxes);
    draw-vertical($boxes);
    draw-vertical($boxes);
    draw-vertical($boxes);
}

sub grid2x2() {
    draw-grid-row(2);
    draw-grid-row(2);
    draw-horizontal(2);
}

sub grid4x4() {
    draw-grid-row(4);
    draw-grid-row(4);
    draw-grid-row(4);
    draw-grid-row(4);
    draw-horizontal(4);
}

# Think Perl6 Exercise 3.3.1
grid2x2();

# Think Perl6 Exercise 3.3.2
grid4x4();
