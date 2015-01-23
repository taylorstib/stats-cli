# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','stats-cli','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'stats-cli'
  s.version = StatsCli::VERSION
  s.author = 'Taylor Stib'
  s.email = 'taylorstib.dev@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Command line tool for viewing NFL stats'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','stats-cli.rdoc']
  s.rdoc_options << '--title' << 'stats-cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'stats-cli'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.12.2')
end
