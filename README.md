# Bibkeys

A Ruby utility to list all the citation keys in a BibTeX file

Lincoln A. Mullen | lincoln@lincolnmullen.com | http://lincolnmullen.com

## Installation

You can install bibkeys from [RubyGems](https://rubygems.org/):

    gem install bibkeys

If you don't have it installed already, you'll need to install 
[bibtex-ruby], which does most of the heavy lifting.

## Usage

To list all the keys in a BibTeX file:

    bibkeys bibliography.bib

To sort the list of keys;

    bibkeys -s bibliograph.bib

To list all the keys in multiple files:

    bibkeys bib1.bib bib2.bib etc.bib

This program functions as *nix-style utility. Accordingly, it can read 
from stdin:

    cat bibliography.bib | bibkeys -

To save the keys to a file:

    bibkeys bibliograph.bib > keys.txt

  [bibtex-ruby]: https://github.com/inukshuk/bibtex-ruby
