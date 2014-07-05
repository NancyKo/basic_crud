class ContactsController < ApplicationController
	
	def index
		@contacts = Contact.all
	end

	def show
		@contact = @user.contacts.find(params[:id])
	end

	def new
		@contact = Contact.new
	end

	def create 
		@contact = Contact.new(contact_params)
			if @contact.save
			redirect_to users_path, :notice => @contact.name + "Has Just Been Added to Contacts"
			else 
			render 'new'
			end	
	end
	
	private

	def contact_params
		params.require(:contact).permit(:name, :email, :telephone)
	end

end
