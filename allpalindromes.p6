#!/usr/bin/perl6

sub first_letter(Str $word){
    return substr $word, 0, 1;
}

sub last_letter(Str $word){
    return substr $word, *-1, 1;
}

sub middle_letter(Str $word){
    return substr $word, 1, *-1;
}

sub is_palindrome(Str $word) {

    if ($word.chars < 2) {
        return True;
    }

    if (first_letter($word) ne last_letter($word)) {
        return False;
    }

    return is_palindrome(middle_letter($word));
}

sub MAIN {
    my Int $palindromes = 0;
    my Int $total = 0;

    for 'words.txt'.IO.lines -> $word {
        if is_palindrome($word) {
            say $word;
            $palindromes++;
        }
        $total++;
    }

    say $palindromes, ' words (', (($palindromes / $total) * 100).fmt('%.4f%%'),
        ') are palindromes.';
}
