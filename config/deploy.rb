require 'bundler/capistrano'
# require 'capistrano/ext/multistage'

set :application, "Rubyconf 2013"
set :repository,  "git@github.com:Extazystas/rails_conf_refinery.git"
set :default_stage, "production"
set :stages, %w(production)
set :use_sudo, true
set :user, 'test'
set :scm, :git
set :deploy_via, :checkout
set :normalize_asset_timestamps, false


set :rails_env, 'production'
set :branch, 'production'
set :deploy_to, "/home/test/rails_conf"
server '192.168.1.64', :web, :app, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

