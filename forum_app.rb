require 'sinatra'
require 'sinatra/activerecord'
require_relative 'models/post'
require_relative 'models/comment'

begin 
  require 'dotenv'
  Dotenv.load
rescue LoadError
end

set :database, ENV['DATABASE_URL']

get '/' do
    @posts = Post.all.reverse
    erb :index
end

post '/' do
    Post.create(title: params[:title], text_body: params[:text_body])
    redirect '/'
end

get '/post/:post_id' do
	@post = Post.find(params[:post_id])
	@comments = Comment.where("post_id = ?", params[:post_id])
	erb :post
end

post '/post/:post_id' do
	Comment.create(text_body: params[:text_body], post_id: params[:post_id])
    redirect "/post/1"
end