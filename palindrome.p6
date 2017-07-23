#!/usr/bin/perl6

# Think Perl6 RExercise 5.3

sub first_letter(Str $word){
    return substr $word, 0, 1;
}

sub last_letter(Str $word){
    return substr $word, *-1, 1;
}

sub middle_letter(Str $word){
    return substr $word, 1, *-1;
}

#say middle_letter('I');
say middle_letter('we');
say middle_letter('you');
#say middle_letter('');
say middle_letter('all of us');

sub is_palindrome(Str $phrase) {

    if ($phrase.chars < 2) {
        return True;
    }

    if (first_letter($phrase) ne last_letter($phrase)) {
        return False;
    }

    return is_palindrome(middle_letter($phrase));
}

say is_palindrome('amanaplanacanalpanama');
say is_palindrome('all of us');
