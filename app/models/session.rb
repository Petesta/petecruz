class Session < ActiveRecord::Base
  attr_accessible :auth_token, :password
end
