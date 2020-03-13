require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
set :database, { adapter: "sqlite3", database: "mydb.db" }
require './models/user'
require './models/team'


get '/' do 
    @users = User.all
    @teams = Team.all
    erb :users
      
end 

get '/user' do
    @user = User.find(params[:id])
    erb :user
end

get "/team" do
    @team = Team.find(params[:id])
    erb :team 
end



#You want to have a route to display a form that allows the user to specify a name from the users table,
#and posts the result back to another route that will display that user’s attributes along with the team to which they belong. 
#You want to have a route to display a form that allows the user to specify the name of the team,
#and posts the result back to another route that will display the team attributes and all team members.
#When you have it working, use git to commit your changes and push it to your repository.
