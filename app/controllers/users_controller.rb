class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render :json => @users.to_json }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to :action => :index
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to :action => :index
  end

private
  def user_params
    params.require(:user).permit(:name)
  end

end
