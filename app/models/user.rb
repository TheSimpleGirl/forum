class User < ActiveRecord::Base
  attr_accessible :admin, :authentication_token, :email, :monk_id
end
