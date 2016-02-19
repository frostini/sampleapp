class InquiryController < ApplicationController
  def create
  	    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        ContactMailer.new_inquiry_email(@inquiry).deliver_now
        ContactMailer.welcome_email(@inquiry).deliver_now
        format.html { redirect_to :root, notice: 'Thank you for reaching out. We will be contacting you shortly.' }
        format.json { render :root, status: :created, location: :root }
      else
        format.html { render :root,  notice: 'There was an error processing your request. Please try again at a later time.'}
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

private
	def inquiry_params
	params.require(:inquiry).permit(:name, :text, :email)
	end

end
