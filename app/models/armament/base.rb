class Armament::Base < ActiveRecord::Base

  attr_reader :base_penetration

  def initalize
    @base_penetration = 5
  end

  private




end
