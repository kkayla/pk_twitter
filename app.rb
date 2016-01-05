# the app.rb page is used to require in the gems that i'll be using on the page and set/name the database

require "sinatra"
require "sinatra/activerecord"
require "./models.rb"
# require "sinatra/flash"

set :database, "sqlite3:myblogdb.sqlite3"

require "./models.rb"


get '/' do
	Post.create(title: "Hello", body: "This is a post")
	@posts = Post.all
	erb :index
end

get '/post' do
	@last_post = Post.last
	erb :post_page
end

get '/sign-in' do
	erb :signin
end

post '/sign-in' do
	@user = User.where(username: params[:username]).first

	if @user.password == params[:password]
		redirect '/'

	else
		redirect '/sign-in'
	end
end

get '/login-failed' do
	"You failed!!!"
end
