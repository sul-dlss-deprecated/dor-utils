# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'dor-utils'
set :repo_url, 'https://github.com/sul-dlss/dor-utils.git'

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Prompt for the correct username
ask(:user, 'enter the app username')

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
ask(:home_parent_dir, %{Enter the full path of the parent of the home dir (e.g. /home)})
set :deploy_to, "#{File.join fetch(:home_parent_dir), fetch(:user), fetch(:application)}"

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/republish.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :stages, %w(dev staging production)

set :linked_dirs, %w(log config/environments config/certs)
