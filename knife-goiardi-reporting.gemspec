# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife-goiardi-reporting/version'
Gem::Specification.new do |s|
  s.name = "knife-goiardi-reporting"
  s.version = Knife::GoiardiReporting::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Peck"]
  s.date = "2014-02-03"
  s.description = "Knife plugin for Opscode Reporting"
  s.email = "matthew@opscode.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md", "Rakefile", "lib/chef/knife/goiardi_runs_list.rb", "lib/chef/knife/goiardi_runs_show.rb", "lib/chef/goiardi/reporting/knife_helpers.rb", "lib/knife-goiardi-reporting/version.rb"]
  s.homepage = "http://www.opscode.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Knife plugin for Opscode Reporting"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-cli>, [">= 1.2.2"])
    else
      s.add_dependency(%q<mixlib-cli>, [">= 1.2.2"])
    end
  else
    s.add_dependency(%q<mixlib-cli>, [">= 1.2.2"])
  end
end

