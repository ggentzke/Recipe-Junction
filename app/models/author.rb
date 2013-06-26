class Author < ActiveRecord::Base
  attr_accessible :diet, :name
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  def recipes
    Recipe.where( author: self.name )
  end
end
