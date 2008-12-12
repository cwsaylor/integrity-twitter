require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('integrity-twitter', '1.0.0') do |e|
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
