class User < ActiveRecord::Base
  #Password and Password_confirmation are just virtual attributes
  has_many :posts
  has_secure_password

  before_create :generate_auth_token
  attr_accessible :email, :full_name, :password, :password_confirmation, :permissions

  validates :full_name, presence: true, length: { maximum: 40 }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }

  def is_admin?
    permissions == 0
  end

  def is_developer?
    permissions == 1
  end

  def is_author?
    permissions == 2
  end

  def permission_str
    case self[:permissions]
      when 0 then "Administrator"
      when 1 then "Developer"
      when 2 then "Author"
    end
  end

  private

  def generate_auth_token
    self.auth_token = SecureRandom.urlsafe_base64 
  end

end
