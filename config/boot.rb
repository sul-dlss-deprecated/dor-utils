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

optsparse.parse!

if ARGV.empty?
  puts optsparse
  exit
end

require_relative "environments/#{options[:env]}"
