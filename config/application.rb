# require gems and classes
# allow Sinatra to find Gemfile
require 'bundler'
# Loads all gems specified in Gemfile in project
Bundler.require
# adds the entire project to $LOAD_PATH
$: << File.expand_path('../', __FILE__)
# This line explicitly requires each file found in our model, view and controller folders
Dir['./app/**/*.rb'].sort.each { |file| require file }

# configure sinatra
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'assets') }
set :erb, :layout => :'layouts/application'