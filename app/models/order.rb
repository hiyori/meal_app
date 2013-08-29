class Order < ActiveRecord::Base

  has_many :votes
  has_many :users, through: :votes
  has_many :meals, through: :votes
  
  default_scope -> { order('created_at DESC') }
  
end
