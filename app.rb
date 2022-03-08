#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "blog.db"}

class Post < ActiveRecord::Base
end

class Comment < ActiveRecord::Base
end

get '/' do
	erb :index	
end

get '/new' do
  	erb :new
end

post '/new' do
	c = Post.new params[:post]
	c.save
end