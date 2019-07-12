class UserMailer < ApplicationMailer
	default from: 'postmaster@mg.dameconsulting.us'

	def welcome_email(user)
		@user = user
		@url = 'http://dameconsulting.us/contact'
		mail(to: @user.email, subject: 'Welcome to Our Awesome Site')
	end

	def sample_email(user)
    	@user = user
    	mail({
      		:from    => ENV['dame_username'],
      		:to      => @user.email,
      		:subject => "Welcome",
      		:text    => "You have successfully submitted your inquiry"
    	})
  	end

  	

end
