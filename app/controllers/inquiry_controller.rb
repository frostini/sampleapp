class InquiryController < ApplicationController
  def create
  	    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to :root, notice: 'assistant was successfully created.' }
        format.json { render :root, status: :created, location: :root }
      else
        format.html { render :root }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

private
	def inquiry_params
	params.require(:inquiry).permit(:name, :text, :email)
	end

end
