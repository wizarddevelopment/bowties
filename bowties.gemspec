# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'bowties/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Bowties::RUBY_VERSION}"
  s.authors = ['Wizard Development']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Bowties is a base Rails project that you can upgrade. It is used by
Wizard Development to get a jump start on a working app.
  HERE

  s.email = 'admin@wizarddevelopment.com'
  s.executables = ['bowties']
  s.extra_rdoc_files = %w(README.md LICENSE)
  s.files = `git ls-files`.split("\n")
  s.homepage = 'http://github.com/wizarddevelopment/bowties'
  s.license = 'MIT'
  s.name = 'bowties'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app using Wizard Development's best practices."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Bowties::VERSION

  s.add_dependency 'bitters', '~> 1.0.0'
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Bowties::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2'
end
