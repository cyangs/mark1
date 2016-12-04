class Armament < ActiveRecord::Base
  has_one :ship_id
  has_one :turrets
  has_one :caliber
  has_one :guns
  has_one :muzzle_velocity
  has_one :penetration

  validates_presence_of :ship_id, :turrets, :caliber, :guns, :muzzle_velocity, :penetration
  validates_uniqueness_of :ship_id

end

