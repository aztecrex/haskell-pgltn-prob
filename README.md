Pig Latin Translator
==============================

The Pig Latin Translator converts a text file into
Pig Latin.

A Pig Latin translation is a word-by-word conversion
of text using the following word rules:

0. if a word contains anything other than ASCII
     letter characters, it is left intact in the
     translation.

0. if a word starts with a consonant, move
     all letters up to the first vowel, in order,
     to the end of the word and suffix the result
     with "ay" .

0. if the word starts with a vowel, simply
     suffix the original word with "yay" .

0. Case is mostly preserved in the structure of a word:
      *  if a word consists entirely of upper case
         letters, the translated word consists entirely
         of uppercase letters, including the added
         suffixes.
      *  otherwise, if a word starts with a capital
         letter, any characters moved to the end are
         converted to lower case and the initial
         character of the resulting word is converted
         to upper case.

Usage
--------
The program operates on standard input and writes to standard output.


