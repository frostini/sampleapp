class ContactMailer < ApplicationMailer
default from: 'marlonjfrausto@gmail.com.com'
	def welcome_email(inquiry)
		@inquiry = inquiry
			mail(to: @inquiry.email, subject: 'Thank you so much for reaching out')
	end
end
