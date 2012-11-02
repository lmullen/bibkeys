# encoding: utf-8

require 'bundler'
begin
  Bundler.setup
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake/clean'
CLEAN.include('*.gem')

desc 'Builds the gem file'
task :build => ['manifest'] do
  system 'gem build bibkeys.gemspec'
end


desc 'Updates the Manifest file'
task :manifest => ['clean'] do
  m = File.open('Manifest', 'w')
  m.print FileList['**/*'].reject{ |f|
    f.start_with?('coverage') || f.end_with?('.bib')
  }.join("\n")
  m.close
end

