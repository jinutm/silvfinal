# -*- encoding: utf-8 -*-
# stub: supermodel 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "supermodel"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alex MacCaw"]
  s.date = "2010-08-04"
  s.description = "In memory DB using ActiveModel"
  s.email = "info@eribium.org"
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.homepage = "http://github.com/maccman/supermodel"
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "In memory DB using ActiveModel"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.0.beta"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.0.0.beta"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.0.0.beta"])
  end
end
