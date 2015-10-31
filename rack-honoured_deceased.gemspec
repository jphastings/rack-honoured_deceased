# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/honoured_deceased/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-honoured_deceased"
  spec.version       = Rack::HonouredDeceased::VERSION
  spec.authors       = ["Rob", "JP"]
  spec.email         = ["root@sphericalcube.net", "jp@byjp.me"]

  spec.summary       = %q{Honour those lost but not forgotten in your rack middleware. GNU Terry Pratchett.}
  spec.description   = %q{Includes the X-Clacks-Overhead header inside your rack application. http://redd.it/2yt9j6}
  spec.homepage      = "https://github.com/jphastings/rack-honoured_deceased"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rspec-its', '~> 1.2'
  spec.add_development_dependency 'rack', '~> 1.6'
end
