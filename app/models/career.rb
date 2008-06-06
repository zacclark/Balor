class Career < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => ": What is this?"
  
  belongs_to :character
end
