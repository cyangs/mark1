class Ship < ActiveRecord::Base
  has_one :armament
  has_one :propulsion
  has_one :armor

  def initialize(name)
    binding.pry

  end

  def build_ship


  end


  def arm_ship


  end


  private

  def set_ship_specs



  end

end

