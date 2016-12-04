class Ship::Dreadnought < Ship::Base
  attr_reader :ship, :armament

  def initialize(ship_name)
    @ship = find_ship(ship_name)
  end

  def armament
    return @cached_armament if @cached_armament.present?
    armament = Armament.find_by_ship_id(ship.id)
    raise StandardError unless armament.present?
    @cached_armament = armament
  end

  def propulsion
    return @cached_propulsion if @cached_propulsion.present?
    propulsion = Propulsion.find_by_ship_id(ship.id)
    raise StandardError unless propulsion.present?
    @cached_propulsion = propulsion
  end

  def armor
    return @cached_armor if @cached_armor.present?
    armor = Armor.find_by_ship_id(ship.id)
    raise StandardError unless armor.present?
    @cached_armor = armor
  end

  private

  def find_ship(ship_name)
    ship = Ship.find_by_name(ship_name.capitalize)
    raise StandardError unless ship.present?
    ship
  end

end

