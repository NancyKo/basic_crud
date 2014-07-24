class ContactsController < ApplicationController
	
	def index
		@contacts = Contact.where(:user_id => params[:user_id])
		@user_id = params[:user_id]
		# @contacts = Contact.find_by_user_id(params[:user_id])
		# binding.pry
		# @current_user.contacts = current_user.contacts 
	end

	def show
		@contact = Contact.find(params[:id]) # queries the contact table

		# @contact_user = @contact.user # does not query the user table
		# @user = User.find(params[:user_id]) # queries the user table
	end

	def new
		@contact = Contact.new
	end

	def create 
		# @contact.user = Contact.find(params[:user_id])
		contact = Contact.new(contact_params)
		contact.user = User.find(params[:user_id])
		if contact.save
			redirect_to user_contact_path(contact.user, contact), :notice => contact.name + "Has Just Been Added to Contacts"
		else 
			redirect_to 'contacts#new'
		end	
	end

	def edit
	end

	def update 
	end

	def destroy
	end
	
	private

	def contact_params
		params.require(:contact).permit(:name, :email, :telephone)
	end

end
