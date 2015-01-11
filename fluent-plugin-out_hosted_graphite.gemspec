# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'fluent/plugin/out_hosted_graphite/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-out_hosted_graphite"
  spec.version       = "0.0.2"
  spec.authors       = ["inokappa"]
  spec.email         = ["inokappa"]
  spec.summary       = %q{fluentd output plugin for post to Hosted Graphite}
  spec.description   = %q{fluentd output plugin for post to Hosted Graphite}
  spec.homepage      = "https://github.com/inokappa/fluent-plugin-out_hosted_graphite"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd"
  spec.add_dependency "hosted_graphite"

  spec.rubyforge_project = "fluent-plugin-out_hosted_graphite"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
