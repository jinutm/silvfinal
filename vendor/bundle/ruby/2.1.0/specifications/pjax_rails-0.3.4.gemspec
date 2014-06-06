# -*- encoding: utf-8 -*-
# stub: pjax_rails 0.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "pjax_rails"
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson (PJAX by Chris Wanstrath)"]
  s.date = "2012-10-22"
  s.email = "david@loudthinking.com"
  s.rubygems_version = "2.2.2"
  s.summary = "PJAX integration for Rails 3.1+"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
    else
      s.add_dependency(%q<jquery-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<jquery-rails>, [">= 0"])
  end
end
