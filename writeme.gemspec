# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{writeme}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jack Dempsey"]
  s.date = %q{2010-09-16}
  s.default_executable = %q{writeme}
  s.description = %q{easily generate well structured READMEs}
  s.email = %q{jack dot dempsey at gmail dot com}
  s.executables = ["writeme"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "bin/writeme",
     "features/bin/general_usage.feature",
     "features/defaults.feature",
     "features/step_definitions/default_steps.rb",
     "features/step_definitions/generation_steps.rb",
     "features/step_definitions/writeme_steps.rb",
     "features/support/env.rb",
     "lib/writeme.rb",
     "lib/writeme/defaults.rb",
     "lib/writeme/version.rb",
     "templates/.writeme.yml",
     "templates/README.erb",
     "templates/README.yml",
     "test/helper.rb",
     "test/test_writeme.rb"
  ]
  s.homepage = %q{http://github.com/jackdempsey/writeme}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{easily generate well structured READMEs}
  s.test_files = [
    "test/helper.rb",
     "test/test_writeme.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
  end
end
