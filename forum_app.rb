require 'sinatra'
require 'sinatra/activerecord'
require_relative 'models/post.rb'

begin 
  require 'dotenv'
  Dotenv.load
rescue LoadError
end

set :database, ENV['DATABASE_URL']

get '/' do
    @posts = Post.all
    erb :index
end

post '/' do
    Post.create(params.symbolize_keys)
    redirect '/'
end