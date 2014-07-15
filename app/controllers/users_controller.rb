class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		# @user.contacts 
	end

	def create 
		@user = User.new(strong_params)
			if @user.save
			redirect_to users_path, :notice => @user.email + " Signed Up now please Log in"
			else 
			render 'new'
		end
	end

	def new 
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def update	
		@user = User.find(params[:id])
		if @user.update(strong_params)
			redirect_to users_path 
		end
	end

	def destroy
		@user = User.find(params[:id])
		redirect_to users_path  
	end
	
	private
	def strong_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end	
end

