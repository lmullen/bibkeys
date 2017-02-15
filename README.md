**This software is no longer supported.**

# Bibkeys

A Ruby utility to list all the citation keys in a BibTeX file

Lincoln A. Mullen | lincoln@lincolnmullen.com | http://lincolnmullen.com

## Installation

You can install bibkeys from [RubyGems][]:

    gem install bibkeys

If you don't have it installed already, you'll need to install
[bibtex-ruby][], which does most of the heavy lifting. Using gem 
to install bibkeys should install that dependency for you.

## Usage

To list all the keys in a BibTeX file:

    bibkeys bibliography.bib

To sort the list of keys:

    bibkeys -s bibliography.bib

To list all the keys in multiple files:

    bibkeys bib1.bib bib2.bib etc.bib

This program functions as \*nix-style utility. Accordingly, it can read
from stdin:

    cat bibliography.bib | bibkeys -

To save the keys to a file:

    bibkeys bibliography.bib > keys.txt

## Using Bibkeys with Vim

Bibkeys may be useful to you if you use BibTeX citation keys in your
writing. I generate a file with citation keys automatically whenever I
edit my [BibTeX database][]. In my `.vimrc`, I've added the following
lines:

    set dictionary=$HOME/bib/citekeys.txt
    set complete+=k

When writing a citation in a LaTeX or Pandoc document, typing the
beginning of a citation and pressing `Ctrl-X Ctrl-K` or `Ctrl-X Ctrl-N`
autocompletes the citation. (N.B. This only works if your citation keys
do not contain characters like `:` or `-`. If you keys do have those
characters, you'll need to user-completion or omni-completion, both of
which are a pain.)

  [RubyGems]: https://rubygems.org/
  [bibtex-ruby]: https://github.com/inukshuk/bibtex-ruby
  [BibTeX database]: https://github.com/lmullen/historybib
