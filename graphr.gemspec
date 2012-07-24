# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'graphr/version'

Gem::Specification.new do |s|
  s.name        = 'graphr'
  s.version     = GraphR::VERSION
  s.authors     = ['Robert Feld', 'Louis Mullie']
  s.email       = ['feldt@ce.chalmers.se', 'louis.mullie@gmail.com']
  s.homepage    = 'https://github.com/louismullie/graphr'
  s.summary     = %q{ Graph-related Ruby classes. }
  s.description = %q{ Graph-related Ruby classes, including a fairly extensive directed graph class, and an interface to Graphviz' DOT graph generator. }
  
  # Add all files.
  s.files = Dir['lib/**/*'] + Dir['tests/**/*'] + ['README.md', 'LICENSE', 'RELEASE']
  
end