# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cbrunnkvist-psd_logger}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Conny Brunnkvist"]
  s.date = %q{2010-09-06}
  s.default_executable = %q{psd_logger}
  s.description = %q{An improved Logger replacement that logs to syslog, with custom tweaks added & defaults set. For a generic one please see http://github.com/cpowell/sysloglogger}
  s.email = %q{cb16@sanger.ac.uk}
  s.executables = ["psd_logger"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/psd_logger",
     "cbrunnkvist-psd_logger.gemspec",
     "lib/psd_logger.rb",
     "lib/psd_logger_env_formatting.rb",
     "test/helper.rb",
     "test/test_syslog_logger.rb"
  ]
  s.homepage = %q{http://github.com/cbrunnkvist/psd_logger}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Sanger/PSD specific fork of the SyslogLogger gem.}
  s.test_files = [
    "test/helper.rb",
     "test/test_syslog_logger.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

