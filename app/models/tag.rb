class Tag < ActiveRecord::Base
  has_many :interests
  has_many :users
end
