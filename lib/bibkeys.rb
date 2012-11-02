# Name::          Bibkeys
# Author::        Lincoln Mullen | lincoln@lincolnmullen.com
# Copyright::     Copyright (c) 2012 Lincoln Mullen 
# License::       MIT License | http://lmullen.mit-license.org/

require 'bibtex'

# This class loads a BibTeX file passed to it and provides a method to 
# list its keys, sorted or unsorted
class Bibkeys

  # Load the BibTeX file 
  def initialize ( filename , sort )
    @bib = BibTeX.open(filename)
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
