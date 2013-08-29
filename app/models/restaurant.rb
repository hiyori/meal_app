class Restaurant < ActiveRecord::Base
  
  before_save :create_link
  
  has_many :meals
  
  def self.autocomplete(search)
    Restaurant.where("LOWER(name) LIKE ?", "%#{search}%")
  end
  
  private
  
  def create_link
    if link.start_with?("www") || !link.start_with?("http://www", "http://")
      self.link="http://"+link
    end  
  end 
   
end
