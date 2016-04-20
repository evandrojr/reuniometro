class Meeting < ActiveRecord::Base

  def duration
    TimeDifference.between(created_at, finish)
  end

  def duration_for_humans
    d = duration
    "#{d.in_hours.to_i.to_s.rjust(2, '0')}:#{d.in_minutes.to_i.to_s.rjust(2, '0')}:#{d.in_seconds.to_i.to_s.rjust(2, '0')}"
  end

end
