class SessionsController < ApplicationController
<<<<<<< HEAD
	def new
		render 'new'
  	end

  	def create
  		user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	sign_in user
    	redirect_back_or user  ## redirecting after successful sign in    
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  	end

  	def destroy
      sign_out
      redirect_to root_url
  	end
=======
def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end

>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a

end
