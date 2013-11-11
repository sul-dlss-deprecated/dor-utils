require 'bundler/setup'
Bundler.require
require 'optparse'

# Load the environment file based on Environment.  Default to development
options = {:env => 'development'}
optsparse = OptionParser.new do |opts|
  opts.banner = "Usage: object-merge.rb [options] ids-to-merge.csv"

  opts.on("-e", "--environment ENV", "Environment to run in (development, test, production). Defaults to development") do |env|
    options[:env] = env
  end
end

if ARGV.empty?
  puts optsparse
  exit
end

optsparse.parse!

env_file = File.expand_path(File.dirname(__FILE__) + "/./environments/#{options[:env]}")
require env_file
