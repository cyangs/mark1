class Ship < ActiveRecord::Base
  has_one :armament
  has_one :propulsion
  has_one :armor

  validates_presence_of :name, :nationality, :class
  validates_uniqueness_of :name

  def build_ship
  
  
  end

  def arm_ship


  end

  private

  def set_ship_specs



  end

end

