class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  ## To Remember User SignIn Status
  include SessionsHelper
=======
>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a
end
