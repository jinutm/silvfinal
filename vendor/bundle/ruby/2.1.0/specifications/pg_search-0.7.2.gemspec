# -*- encoding: utf-8 -*-
# stub: pg_search 0.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "pg_search"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Grant Hutchins", "Case Commons, LLC"]
  s.date = "2013-11-20"
  s.description = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"
  s.email = ["gems@nertzy.com", "casecommons-dev@googlegroups.com"]
  s.homepage = "https://github.com/Casecommons/pg_search"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.2.2"
  s.summary = "PgSearch builds Active Record named scopes that take advantage of PostgreSQL's full text search"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1"])
      s.add_runtime_dependency(%q<arel>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.14"])
      s.add_development_dependency(%q<with_model>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.1"])
      s.add_dependency(%q<activesupport>, [">= 3.1"])
      s.add_dependency(%q<arel>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.14"])
      s.add_dependency(%q<with_model>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.1"])
    s.add_dependency(%q<activesupport>, [">= 3.1"])
    s.add_dependency(%q<arel>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.14"])
    s.add_dependency(%q<with_model>, [">= 0"])
  end
end
