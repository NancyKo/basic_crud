class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
        redirect_to users_path
    else 
      render "new", :notice => "Please enter information again"
    end
  end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => 'Signed out!'
	end

end

