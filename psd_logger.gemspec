# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "psd_logger/version"

Gem::Specification.new do |s|
  s.name        = "psd_logger"
  s.version     = PsdLogger::VERSION
  s.authors     = ["Conny Brunnkvist", "Matthew Denner"]
  s.email       = ["cb16@sanger.ac.uk", "md12@sanger.ac.uk"]
  s.homepage    = "http://sanger.ac.uk/"
  s.summary     = %q{A Sanger/PSD specific fork of the SyslogLogger gem.}
  s.description = %q{An improved Logger replacement that logs to syslog, with custom tweaks added & defaults set. For a generic one please see http://github.com/cpowell/sysloglogger}

  s.rubyforge_project = "psd_logger"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rake')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('mocha')
end
