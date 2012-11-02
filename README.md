# Bibkeys

A Ruby utility to list all the citation keys in a BibTeX file.

Lincoln Mullen | lincoln@lincolnmullen.com | http://lincolnmullen.com

## Usage

To list all the keys in a BibTeX file:

    bibkeys bibliograph.bib

To sort the list of keys;

    bibkeys -s bibliograph.bib

To save the keys to a file:

    bibkeys bibliograph.bib > out.txt

## Dependencies

This utility depends on [bibtex-ruby][], which does most of the heavy
lifting.

  [bibtex-ruby]: https://github.com/inukshuk/bibtex-ruby
