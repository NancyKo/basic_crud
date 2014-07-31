class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def sign_up(user)
  	@user = user
  	@url = 
end
