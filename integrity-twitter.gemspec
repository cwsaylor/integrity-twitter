# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{integrity-twitter}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Saylor"]
  s.date = %q{2008-12-12}
  s.description = %q{Easily let Integrity tweet after each build}
  s.email = %q{chris@justhack.com}
  s.extra_rdoc_files = ["lib/notifier/config.haml", "lib/notifier/twitter.rb", "README.markdown"]
  s.files = ["integrity-twitter.gemspec", "lib/notifier/config.haml", "lib/notifier/twitter.rb", "Manifest", "Rakefile", "README.markdown", "spec/spec_helper.rb", "spec/twitter_spec.rb"]
  s.homepage = %q{http://integrityapp.com}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Integrity-twitter", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{integrity-twitter}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Twitter notifier for the Integrity continuous integration server}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<foca-integrity>, [">= 0"])
      s.add_runtime_dependency(%q<twitter>, [">= 0"])
    else
      s.add_dependency(%q<foca-integrity>, [">= 0"])
      s.add_dependency(%q<twitter>, [">= 0"])
    end
  else
    s.add_dependency(%q<foca-integrity>, [">= 0"])
    s.add_dependency(%q<twitter>, [">= 0"])
  end
end
