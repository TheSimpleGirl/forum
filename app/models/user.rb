class User < ActiveRecord::Base
  attr_accessible :admin, :authentication_token, :email, :monk_id

  attr_accessor :password

  validates :password, :presence => true, :confirmation => true

end

