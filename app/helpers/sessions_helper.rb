module SessionsHelper
<<<<<<< HEAD
	def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.hash(remember_token))
    self.current_user = user
  end

## To check if a User is signed in
def signed_in?
    !current_user.nil?
  end  

## Setting the Current User
  def current_user=(user)
    @current_user = user
  end

## To find the Current User
  def current_user
    remember_token = User.hash(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
  
  def current_user?(user)
    user == current_user
  end

  
## Sign Out Method
def sign_out
    current_user.update_attribute(:remember_token,
                                  User.hash(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end  

def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

=======
>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a
end
