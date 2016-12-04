class FireControl::Mk1 < FireControl::Base
  #include Validator
  #TO DO FIX THIS BROKEN SHIT
  attr_accessor :bearing, :speed, :course_plot, :range

  def initialize(bearing, speed)
    @range = nil
    @bearing = bearing
    @speed = speed
    @course_plot = Set.new
  end

  def plot_course_position(new_bearing)
    course << { :time => get_current_time, :bearing => new_bearing.to_i }
  end

  def calculate

    puts "YOUR SPEED IS #{speed} and your BEARING IS #{bearing} "


  end

end

