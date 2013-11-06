class User < ActiveRecord::Base
	
	attr_accessor :name, :email, :password, :password_confirmation
	
	#has_secure_password

	before_save {|user| user.email= user.downcase}

	validates :name, presence:true, length:{maximum:50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  						uniqueness: { case_sensitive: false }
  	validates :password, length:{minimum:6}
  

end
  	