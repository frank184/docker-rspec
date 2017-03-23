# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker/rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "docker-rspec"
  spec.version       = Docker::RSpec::VERSION
  spec.authors       = ["Frank"]
  spec.email         = ["francoisbelanger1993@hotmail.com"]

  spec.summary       = %q{Executes RSpec commands on a Docker container using Compose.}
  spec.description   = %q{Executes RSpec commands on a Docker container using Compose.}
  spec.homepage      = "https://github.com/frank184/docker-rspec"
  spec.license       = 'MIT'

  spec.files = Dir[
    "README.md", "LICENSE", "VERSION",
    "bin/*",
    "lib/**/*.rb",
  ]
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.executables = ["docker-rspec"]

  spec.required_ruby_version = ">= 1.9.3"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
