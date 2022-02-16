lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tel_link_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'tel_link_rails'
  spec.version       = TelLinkRails::VERSION
  spec.authors       = ['Tom Simnett']
  spec.email         = ['tom@initforthe.com']
  spec.summary       = 'Rails telephone link helper'
  spec.description   = 'Rails telephone link helper'
  spec.homepage      = 'https://github.com/initforthe/tel_link_rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec'
end
