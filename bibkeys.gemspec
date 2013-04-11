Gem::Specification.new do |s|
  s.name          = 'bibkeys'
  s.version       = '0.0.1'
  s.date          = '2012-11-02'
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
