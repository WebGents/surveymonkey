# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'surveymonkey/version'

Gem::Specification.new do |spec|
    spec.name = 'surveymonkeyapi'
    spec.version = SurveyMonkey::VERSION
    spec.authors = ['Anton Bogdanov']
    spec.email = ['kortirso@gmail.com']

    spec.summary = 'Gem for interaction with SurveyMonkey API'
    spec.description = 'Actions with surveys in SurveyMonkey system'
    spec.homepage = 'https://github.com/kortirso/surveymonkey'
    spec.license = 'MIT'

    spec.files = `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
    end
    spec.bindir = 'exe'
    spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ['lib']

    spec.add_development_dependency 'bundler', '~> 1.14'
    spec.add_development_dependency 'rake', '~> 10.0'
    spec.add_development_dependency 'rspec', '~> 3.0'
    spec.add_development_dependency 'rubocop', '~> 0.49.1'
end
