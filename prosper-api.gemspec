# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prosper/api/version'

Gem::Specification.new do |spec|
  spec.name          = "prosper-api"
  spec.version       = Prosper::Api::VERSION
  spec.authors       = ["QW3 Software & Marketing"]
  spec.email         = ["contato@qw3.com.br"]
  spec.description   = %q{Fornece uma interface de conexão com os serviços REST do Prosper ERP}
  spec.summary       = %q{Integra com a API do Prosper ERP}
  spec.homepage      = "http://www.qw3.com.br"
  spec.license       = "MIT"

  spec.add_dependency 'httparty', '>= 0.11.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest', '>= 5.0'
end
