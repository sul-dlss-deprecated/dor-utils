require 'bundler/setup'
Bundler.require

# Load the environment file based on Environment.  Default to development
environment = ENV['ROBOT_ENVIRONMENT'] ||= 'development'

env_file = File.expand_path(File.dirname(__FILE__) + "/./environments/#{environment}")
require env_file
