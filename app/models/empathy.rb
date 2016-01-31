class Empathy < ActiveRecord::Base
  has_many :interests
  has_many :users

  def interest_user(user)
   interests.find_by(user_id: user)
  end
end
