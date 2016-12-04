class Armament < ActiveRecord::Base
  belongs_to :ship

  validates_presence_of :ship_id, :turrets, :caliber, :guns, :muzzle_velocity, :penetration
  validates_uniqueness_of :ship_id

end

