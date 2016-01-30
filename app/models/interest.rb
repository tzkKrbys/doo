class Interest < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :tags
  has_many :empathies


  def empathy_user(user)
   empathies.find_by(user_id: user)
  end
end
