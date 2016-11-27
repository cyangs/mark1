require 'yaml'
require 'json'

SHIP_CONSTANTS = [
  "nationality",
  "propulsion",
  "armament",
  "armor",
  ]

class Ship

  attr_reader :ship_name

  def initialize(ship_name)
    @ship_name = ship_name
  end

  def build_ship
    begin
      current_ship = YAML.load_file("/Users/calvin/desktop/MK1/ships/#{@ship_name}.yaml")
      set_ship_specs(current_ship)
    rescue Exceptions::ShipNotFound => e
      raise e.class
    end
  end

  def arm_ship
    if @nationality.downcase == "german"
      binding.pry
      national_armament = Armament::Krupp.new(@armament)
    elsif nationality.downcase == "british"
      national_armament = Armament::VickersArmstrong.new(@armament)
    end

    binding.pry
    @armament = national_armament
    self.class.send(:attr_reader, "armament")
  end

  private

  def set_ship_specs(current_ship)
    SHIP_CONSTANTS.each do |const|
      ship_values = current_ship[const]
      self.instance_variable_set("@#{const}", ship_values)
    end
  end

end

