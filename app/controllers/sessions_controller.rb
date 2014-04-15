class SessionsController < ApplicationController
	def new
		#render 'new'
  end

  	def create
  		user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	sign_in user
    	## redirecting after successful sign in to students homepage
      redirect_to students_url    
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  	end

  	def destroy
      sign_out
      redirect_to root_url
  	end

end
