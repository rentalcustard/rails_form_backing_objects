# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rails_form_backing_objects/version'

Gem::Specification.new do |s|
  s.name = %q{rails_form_backing_objects}
  s.version = RailsFormBackingObjects::VERSION

  s.authors = ["Tom Stuart"]
  s.email = ["tom@therye.org"]
  s.files = Dir.glob("lib/**/*")
  s.homepage = %q{https://github.com/mortice/rails_form_backing_objects}
  s.rdoc_options = ["--main"]
  s.require_paths = ["lib"]
  s.summary = %q{ActiveModel compliant form backing objects for Rails}
	s.description = "Dumb superclass for rails form backing objects"

  s.add_dependency "activemodel"

	s.add_development_dependency "rspec"
  s.add_development_dependency "rake"

	s.require_path = "lib"
	s.required_rubygems_version = ">= 1.3.6"
end
