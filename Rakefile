# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('gemname', '0.1.0') do |p|
  p.description    = "this contains an implementation of a first order filter"
  p.url            = "http://github.com/andrewbaldwin/filter"
  p.author         = "Andrew Baldwin"
  p.email          = "andrew.baldwin@bcs.org.uk"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
