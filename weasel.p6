#!/usr/bin/perl6

#
# Dawkins' Weasel 
#
# 1. Start with a random string of 28 characters.
# 2. Make 100 copies of this string, with a 5% chance per character of that
#    character being replaced with a random character.
# 3. Compare each new string with "METHINKS IT IS LIKE A WEASEL", and give
#    each a score (the number of letters in the string that are correct and
#    in the correct position).
# 4. If any of the new strings has a perfect score (== 28), halt.
# 5. Otherwise, take the highest scoring string, and go to step 2
#

my @charset  = | ['A' .. 'Z'] , ' ';

my @target-phrase = 'METHINKS IT IS LIKE A WEASEL'.comb;
my Rat $mutation-threshold = 0.05;
my Int $copies = 100;

my @current-phrase = map { @charset.pick }, 0 .. @target-phrase.end;
my Int $hi-score = 0;
my Int $count = 0;

repeat {
    say $count.fmt('%04d'), ' ', @current-phrase.join(''), " [$hi-score]";
    $count++;

    for (1 .. $copies) {
        my @trial = map {
            1.rand < $mutation-threshold ?? @charset.pick !! $_;
        }, @current-phrase;
        
        my Int $score = 0;
        for 0 .. @target-phrase.end -> $i {
            if @trial[$i] eq @target-phrase[$i] {
                $score++;
            }
        }
        if $score > $hi-score {
            $hi-score = $score;
            @current-phrase = @trial;
        }
    }

} while ($hi-score < @target-phrase.elems);

say $count.fmt('%04d'), ' ', @current-phrase.join(''), " [$hi-score]";
