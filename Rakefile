require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('integrity-twitter', '1.0.1') do |e|
  e.summary         = "Twitter notifier for the Integrity continuous integration server"
  e.description     = "Easily let Integrity tweet after each build"
  e.url             = "http://integrityapp.com"
  e.author          = "Chris Saylor"
  e.email           = "chris@justhack.com"
  e.has_rdoc        = false
  e.development_dependencies = []
  e.runtime_dependencies = ['foca-integrity', 'twitter']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

require 'spec/rake/spectask'
 
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ["--color", "--format", "progress"]
  t.spec_files = Dir['spec/**/*_spec.rb'].sort
  t.libs = ['lib']
  t.rcov = false
end
 

