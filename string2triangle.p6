#!/usr/bin/perl6

#
# From https:#codegolf.stackexchange.com/questions/127649/fold-a-string-into-a-triangle
#
# By Jaldhar H. Vyas <jaldhar@braincells.com>
# Copyright (C) 2017, Consolidated Braincells Inc.  All rights reserved.
# "Do what thou wilt shall be the whole of the license."
#
# Given a string whose length is divisible by 4, make a triangle as
# demonstrated below.
#
# If the string is abcdefghijkl, then the triangle would be:
#
#       a
#      b l
#     c   k
#    defghij
#
# If the string is iamastringwithalengthdivisiblebyfour, then the triangle would
# be:
#              i
#             a r
#            m   u
#           a     o
#          s       f
#         t         y
#        r           b
#       i             e
#      n               l
#     gwithalengthdivisib
#
# If the string is thisrepresentationisnotatriangle, then the triangle would
# be:
#             t
#            h e
#           i   l
#          s     g
#         r       n
#        e         a
#       p           i
#      r             r
#     esentationisnotat

multi sub MAIN(Str $string where $string.chars % 4 == 0) {
    my Int $n = $string.chars div 4;
    my Int $left = 1;
    my Int $right = $string.chars - 1;
    my Str @chars = $string.comb;        

    # Top of the triangle
    say ' ' x $n + 1, @chars[0];

    # Intermediate lines
    my Int $offset = $n;
    my Int $gap = 2;
    for 1 .. $n - 1 {
        say ' ' x $offset, @chars[$left++], ' ' x $gap - 1, @chars[$right--];
        $offset--;
        $gap += 2;
    }

    # Base of the triangle
    print ' ' x $offset;
    for $left .. $right -> $i {
        print @chars[$i];
    }
    print "\n";
}

multi sub MAIN(Str) {
    $*ERR.say: 'Length of string must be divisble by 4';
}
