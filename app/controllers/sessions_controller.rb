class SessionsController < ApplicationController


    def new
      @user = User.new
      render :login
    end

    def create
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:username])
        session[:user_id] = @user.id
        redirect_to techniques_path
      else
        # flash[:error] = "Inccorect Username or Password"
        redirect_to '/login'
      end
    end

    def welcome
    end

    def destroy #logout
      session.clear
      redirect_to '/'
    end

end