# -*- encoding: utf-8 -*-
# stub: browser 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "browser"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nando Vieira"]
  s.date = "2013-09-10"
  s.description = "Do some browser detection with Ruby."
  s.email = ["fnando.vieira@gmail.com"]
  s.homepage = "http://github.com/fnando/browser"
  s.rubygems_version = "2.2.2"
  s.summary = "Do some browser detection with Ruby."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry-meta>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
    else
      s.add_dependency(%q<pry-meta>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<pry-meta>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
  end
end
