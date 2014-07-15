require 'bcrypt'
class User < ActiveRecord::Base
	has_secure_password
	has_many :contacts, dependent: :destroy
	# @user = User.first
	# @user.contacts

	# first_contact = @user.contacts.first
	# first_contact.user
	validates_uniqueness_of :email
	validates_presence_of :email, :name, :password, :on => :create 
	validates_confirmation_of :password
end
