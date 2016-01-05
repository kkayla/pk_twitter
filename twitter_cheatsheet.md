User < ActiveRecord::Base
  has_many :tweets
end

Tweet < ActiveRecord::Base
belongs_to :user
end

sign up: creating a new user
sing in: starting a session
sign out: ending a session
edit their account details: find a record and use the dot syntax to update
delete thier account: retrieve the user .delete/.destroy on the instance OR user.delete
