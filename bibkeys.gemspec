lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bibkeys/version'

Gem::Specification.new do |s|
  s.name          = 'bibkeys'
  s.version       = Bibkeys::VERSION
  s.date          = '2013-04-11'
  s.summary       = 'List all the keys in BibTeX file'
  s.description   = 'A Ruby utility to list all the citation keys in a BibTeX file'
  s.author        = 'Lincoln A. Mullen'
  s.email         = 'lincoln@lincolnmullen.com'
  s.homepage      = 'http://github.com/lmullen/bibkeys'
  s.files         = File.open('Manifest').readlines.map(&:chomp)
  s.bindir        = 'bin'
  s.executables   << 'bibkeys'
  s.license       = 'MIT'
  s.add_runtime_dependency('bibtex-ruby', ['~>2.3'])
end
