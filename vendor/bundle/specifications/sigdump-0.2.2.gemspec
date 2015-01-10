# -*- encoding: utf-8 -*-
# stub: sigdump 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "sigdump"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sadayuki Furuhashi"]
  s.date = "2013-04-28"
  s.description = "Setup signal handler which dumps backtrace of running threads and number of allocated objects per class. Require 'sigdump/setup', send SIGCONT, and see /tmp/sigdump-<pid>.log."
  s.email = ["frsyuki@gmail.com"]
  s.homepage = "https://github.com/frsyuki/sigdump"
  s.rubygems_version = "2.2.2"
  s.summary = "Setup signal handler which dumps backtrace of running threads and number of allocated objects per class. Require 'sigdump/setup', send SIGCONT, and see /tmp/sigdump-<pid>.log."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
    else
      s.add_dependency(%q<rake>, [">= 0.9.2"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.9.2"])
  end
end