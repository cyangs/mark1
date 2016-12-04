class FireControl::Base

  def get_current_time
    Time.now.strftime('%T')
  end

end

