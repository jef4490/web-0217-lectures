class UsersController < ApplicationController

  def new
    @user = User.new
  end
  get '/users/new'

  def create
    @user = User.create(params)
  end
  post '/users'

  def index
    @users = User.all
  end
  get '/users'

  def show
    @user = User.find(params[:id])
  end
  get '/users/:id'

  def edit
    @user = User.find(params[:id])
  end
  get '/users/:id/edit'

  def update
    @user = User.update(params)
  end
  patch '/users/:id'


  def destroy
    @user = User.find(params[:id])
    @user.delete
  end
  delete '/users/:id'

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
