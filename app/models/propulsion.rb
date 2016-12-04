class Propulsion < ActiveRecord::Base
  belongs_to :ship

  validates_uniqueness_of :ship_id
  
end

