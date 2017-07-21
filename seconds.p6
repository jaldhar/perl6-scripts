#!/usr/bin/perl6

# Think Perl6 Exercise 4.1

sub seconds2dhms(Int $seconds is copy) {

    my $minutes = $seconds div 60;
    $seconds %= 60;
    my $hours = $minutes div 60;
    $minutes %= 60;
    my $days = $hours div 24;
    $hours %= 24;

    say "$days day", $days == 1 ?? '' !! 's',
    ", $hours hour", $hours == 1 ?? '' !! 's',
    ", $minutes minute", $minutes == 1 ?? '' !! 's',
    " and $seconds second", $seconds == 1 ?? '' !! 's',
    '.';
}


#seconds2dhms(240_000);

sub MAIN() {
    my Str $seconds = prompt 'Enter a number of seconds: ';
    seconds2dhms($seconds.Int);
}
