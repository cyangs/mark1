class SimulationController < ApplicationController
  attr_reader :ship

  def show

  end

  private

  def add_ship(ship_class, ship_name)
    new_ship = Ship.new(ship_class, ship_name)
    self.class.send(:attr_reader, new_ship.ship_name)
  end






end

