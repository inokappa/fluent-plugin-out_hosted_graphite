# -*- encoding: utf-8 -*-
# stub: string-scrub 0.0.5 ruby lib
# stub: ext/string/extconf.rb

Gem::Specification.new do |s|
  s.name = "string-scrub"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["SHIBATA Hiroshi"]
  s.date = "2014-10-30"
  s.description = "String#scrub for Ruby 2.0.0 and 1.9.3"
  s.email = ["hsbt@ruby-lang.org"]
  s.extensions = ["ext/string/extconf.rb"]
  s.files = ["ext/string/extconf.rb"]
  s.homepage = "https://github.com/hsbt/string-scrub"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "String#scrub for Ruby 2.0.0 and 1.9.3"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
