class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable :ganalytics, :opentrack
  sendgrid_unique_args :key1 => "value1", :key2 => "value2"

  def sign_up_email(user)
  	
  	@user = user 
  	sendgrid_category "Welcome!"
  	sendgrid_unique_args :key1 => "value1", :key2 => "value2"
  	mail :to => user.email, :subject => "Welcome #{user.name}! Thank you for signing up!"
  end

end
