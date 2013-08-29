class Meal < ActiveRecord::Base
    
  has_many :votes
  has_many :users, through: :votes
  
  belongs_to :restaurant
  
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  
#  def self.autocomplete(search)
#    Dish.where("LOWER(name) LIKE ?", "%#{search}%")
#  end

end
