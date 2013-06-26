class Recipe < ActiveRecord::Base
  attr_accessible :author, :diet, :ingredients, :instructions, :meal_type, :name, :serving_size
  
  validates_numericality_of :serving_size
  validates_presence_of :ingredients, :instructions, :name
  
  def has_author?
    if self.author.blank?
      false
    else
      Author.where( name: self.author ).present?
    end
  end
end
