require 'bcrypt'
class User < ActiveRecord::Base
	has_secure_password
	has_many :contacts

	validates_presence_of :email
	validates_presence_of :password, :on => :create 
	validates_confirmation_of :password
	# validates_uniqueness_of :password, :email
	# :username, 
end
