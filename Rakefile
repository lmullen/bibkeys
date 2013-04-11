# encoding: utf-8

require 'bundler'
require "bundler/gem_tasks"

begin
  Bundler.setup
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake/clean'
CLEAN.include('*.gem')

task :build => ['manifest']

desc 'Updates the Manifest file'
task :manifest do
  m = File.open('Manifest', 'w')
  m.print FileList['**/*'].reject{ |f|
    f.start_with?('pkg') || f.end_with?('.bib')
  }.join("\n")
  m.close
end

