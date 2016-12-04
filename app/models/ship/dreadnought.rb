class Ship::Dreadnought < Ship::Base
  attr_reader :ship

  def initialize(ship_name)
    @ship = find_ship(ship_name)
  end

  def armament
    Armament.find_by_ship_id(ship.id)
  end

  private

  def find_ship(ship_name)
    ship = Ship.find_by_name(ship_name.capitalize)
    
    unless ship.present?
      raise StandardError #THIS SHOULD BE A SUPID MODULE
    end

    ship
  end

end

