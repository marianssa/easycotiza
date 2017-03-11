# -*- encoding: utf-8 -*-
# stub: tbk 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "tbk".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seba Gamboa".freeze]
  s.date = "2015-06-17"
  s.description = "Ruby implementation of Transbank's Webpay protocol".freeze
  s.email = ["me@sagmor.com".freeze]
  s.homepage = "http://sagmor.com/tbk/".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Pure Ruby implementation of Transbank's Webpay KCC 6.0".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
