require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?
require_relative 'app/models.rb'
require_relative 'app/controllers.rb'
require_relative 'app/helpers.rb'

set :database, {adapter: "sqlite3", database: "social_network.sqlite3"}
set :erb, layout: false
enable :sessions
