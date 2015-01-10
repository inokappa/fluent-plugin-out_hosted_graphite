# -*- encoding: utf-8 -*-
# stub: hosted_graphite 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "hosted_graphite"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Abdelkader Boudih"]
  s.date = "2014-11-22"
  s.email = ["terminale@gmail.com"]
  s.homepage = "https://github.com/seuros/hosted_graphite"
  s.licenses = ["Apache 2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "A Ruby client for HostedGraphite"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.6.2"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.4"])
    else
      s.add_dependency(%q<bundler>, [">= 1.6.2"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<minitest>, ["~> 5.4"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.6.2"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<minitest>, ["~> 5.4"])
  end
end
