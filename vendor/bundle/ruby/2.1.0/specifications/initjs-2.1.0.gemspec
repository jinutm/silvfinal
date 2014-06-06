# -*- encoding: utf-8 -*-
# stub: initjs 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "initjs"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Josemar Davi Luedke"]
  s.date = "2014-01-29"
  s.description = "Initjs helps you organize your javascript to play nice with Rails' asset pipeline. Providing a simple and automatic way to execute your javascript into a specific page."
  s.email = ["josemarluedke@gmail.com"]
  s.homepage = "http://github.com/josemarluedke/initjs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Organize your javascript to play nice with Rails' asset pipeline."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14.0"])
      s.add_development_dependency(%q<generator_spec>, ["~> 0.9.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.0.2"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
      s.add_development_dependency(%q<turbolinks>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14.0"])
      s.add_dependency(%q<generator_spec>, ["~> 0.9.0"])
      s.add_dependency(%q<capybara>, ["~> 2.0.2"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<turbolinks>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14.0"])
    s.add_dependency(%q<generator_spec>, ["~> 0.9.0"])
    s.add_dependency(%q<capybara>, ["~> 2.0.2"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<turbolinks>, [">= 0"])
  end
end
