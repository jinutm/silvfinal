# -*- encoding: utf-8 -*-
# stub: schema_associations 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "schema_associations"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ronen Barzel", "Micha\u{142} \u{141}omnicki"]
  s.date = "2013-08-14"
  s.description = "SchemaAssociations extends ActiveRecord to automatically create associations by inspecting the database schema.  This is more more DRY than the standard behavior, for which in addition to specifying the foreign key in the migration, you must also specify complementary associations in two model files (e.g. a :belongs_to and a :has_many)."
  s.email = ["ronen@barzel.org", "michal.lomnicki@gmail.com"]
  s.homepage = "https://github.com/lomba/schema_associations"
  s.rubyforge_project = "schema_associations"
  s.rubygems_version = "2.2.2"
  s.summary = "ActiveRecord extension that automatically (DRY) creates associations based on the schema"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<schema_plus>, [">= 1.2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<simplecov-gem-adapter>, [">= 0"])
    else
      s.add_dependency(%q<schema_plus>, [">= 1.2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<simplecov-gem-adapter>, [">= 0"])
    end
  else
    s.add_dependency(%q<schema_plus>, [">= 1.2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<simplecov-gem-adapter>, [">= 0"])
  end
end
