class Item < ActiveRecord::Base
  belongs_to :character
  
  def total_weight
    self.weight * self.quantity
  end
end
