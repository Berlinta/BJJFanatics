class UsersController < ApplicationController

    def new #rendering signup form
      @user = User.new
    end

    def create #signup
      @user = User.new(user_params)
      if @user.save#loging in the user
        session[:user_id] = @user.id        
        redirect_to techniques_path
      else
        render :new
      end
    end

private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end


end