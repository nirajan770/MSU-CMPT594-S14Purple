class User < ActiveRecord::Base
<<<<<<< HEAD
	before_save{self.email=email.downcase}
	before_create :create_remember_token

	validates :name, presence: true, length:{maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
	uniqueness: {case_sensitive: false}
=======
	validates :name, presence: true, length:{maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
	uniqueness: true
>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a
	validates :password, presence: true, length:{minimum: 6}
	validates :password_confirmation, presence: true


	attr_accessible :name, :email, :password, :password_confirmation
	has_secure_password

<<<<<<< HEAD
	def User.new_remember_token
    	SecureRandom.urlsafe_base64
  	end

  	def User.hash(token)
   		Digest::SHA1.hexdigest(token.to_s)
  	end

  	private
	    def create_remember_token
      		self.remember_token = User.hash(User.new_remember_token)
    	end
=======

>>>>>>> fd93d8d470f2dd90da459cb99b177e1a7f15569a


end
