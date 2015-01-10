# -*- encoding: utf-8 -*-
# stub: cool.io 1.2.4 ruby lib
# stub: ext/cool.io/extconf.rb ext/http11_client/extconf.rb ext/iobuffer/extconf.rb

Gem::Specification.new do |s|
  s.name = "cool.io"
  s.version = "1.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tony Arcieri", "Masahiro Nakagawa"]
  s.date = "2014-05-12"
  s.description = "Cool.io provides a high performance event framework for Ruby which uses the libev C library"
  s.email = ["tony.arcieri@gmail.com", "repeatedly@gmail.com"]
  s.extensions = ["ext/cool.io/extconf.rb", "ext/http11_client/extconf.rb", "ext/iobuffer/extconf.rb"]
  s.files = ["ext/cool.io/extconf.rb", "ext/http11_client/extconf.rb", "ext/iobuffer/extconf.rb"]
  s.homepage = "http://coolio.github.com"
  s.rubygems_version = "2.2.2"
  s.summary = "A cool framework for doing high performance I/O in Ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_development_dependency(%q<rspec>, [">= 2.13.0"])
      s.add_development_dependency(%q<rdoc>, [">= 3.6.0"])
    else
      s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_dependency(%q<rspec>, [">= 2.13.0"])
      s.add_dependency(%q<rdoc>, [">= 3.6.0"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
    s.add_dependency(%q<rspec>, [">= 2.13.0"])
    s.add_dependency(%q<rdoc>, [">= 3.6.0"])
  end
end
