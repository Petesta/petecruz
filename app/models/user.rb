class User < ActiveRecord::Base
  #Password and Password_confirmation are just virtual attributes
  attr_accessible :email, :full_name, :password, :password_confirmation
  has_secure_password
  has_many :posts
  before_create :generate_auth_token

  private
    def generate_auth_token
      self.auth_token = SecureRandom.urlsafe_base64 
    end


end
