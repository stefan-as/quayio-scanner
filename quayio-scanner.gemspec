# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quayio/scanner/version'

Gem::Specification.new do |spec|
  spec.name          = 'quayio-scanner'
  spec.version       = Quayio::Scanner::VERSION
  spec.authors       = ['Benjamin Meichsner']
  spec.email         = ['benjamin.meichsner@aboutsource.net']

  spec.summary       = 'Scan quay.io for vulnerabilties in running docker containers.'
  spec.homepage      = 'https://github.com/aboutsource/quayio-scanner'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sensu-plugin', '~> 2.1'
  spec.add_dependency 'docker-api', '~> 1.33'
  spec.add_dependency 'rest-client', '~> 2.0'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
end
