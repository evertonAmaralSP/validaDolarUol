# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validaDolarUol/version'

Gem::Specification.new do |spec|
  spec.name          = "validaDolarUol"
  spec.version       = ValidaDolarUol::VERSION
  spec.authors       = ["Everton Amaral"]
  spec.email         = ["everton.amaral@abril.com.br"]
  spec.summary       = "Capturar cotacao dolar uol"
  spec.description   = "Simples assim http no site do uol parse e resultado"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["validaDolarUol"]
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
