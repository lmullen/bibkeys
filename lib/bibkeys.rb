# Name::          Bibkeys
# Author::        Lincoln Mullen | lincoln@lincolnmullen.com
# Copyright::     Copyright (c) 2012 Lincoln Mullen 
# License::       MIT License | http://lmullen.mit-license.org/

require 'bibtex'

# This class parses a stream of BibTeX input passed to it and provides a 
# method to list its keys, sorted or unsorted.
class Bibkeys

  # Parses an input stream as if it were a BibTeX file
  def initialize ( stream , sort=false )
    @bib = BibTeX.parse( stream )
    @sort = sort
  end


  # List all the keys in the BibTeX file
  def list

    keys = Array.new

    @bib.each do |entry|
      keys.push entry.key
    end

    if @sort
      puts keys.sort
    else 
      puts keys
    end

  end

end
