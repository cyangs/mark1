class Ships::Dreadnought < Ships::Base
  
  attr_reader :ship_name

  def initialize(ship_name)
    @ship_name = ship_name
  end

end

