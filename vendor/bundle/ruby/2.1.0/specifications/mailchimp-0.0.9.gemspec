# -*- encoding: utf-8 -*-
# stub: mailchimp 0.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "mailchimp"
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Kelly", "Dave Worth"]
  s.date = "2013-07-11"
  s.description = "This provides Ruby access to (eventually) all of Mailchimp's APIs"
  s.email = ["dave@bignerdranch.com"]
  s.homepage = "https://github.com/mailchimp/mailchimp-gem"
  s.rubyforge_project = "mailchimp"
  s.rubygems_version = "2.2.2"
  s.summary = "Mailchimp APIs in Ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<cover_me>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<cover_me>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<cover_me>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
  end
end
