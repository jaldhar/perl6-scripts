#!/usr/bin/perl6

# Think Perl6 Exercise 9.4

sub chop-it(@array) {
    @array.shift;
    @array.pop;
    return @array;
}


my @nums = 1, 2, 3, 4;
say chop-it(@nums);
