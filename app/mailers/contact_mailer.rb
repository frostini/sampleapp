class ContactMailer < ApplicationMailer
default from: 'marlonjfrausto@gmail.com'
	def welcome_email(inquiry)
		@inquiry = inquiry
			mail(to: @inquiry.email, subject: 'Thank you so much for reaching out')
	end

	def new_inquiry_email(inquiry)
		@inquiry = inquiry
			mail(to: 'marlonjfrausto@gmail.com', subject: 'You got a new inquiry')
	end
end
