class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
      @seconds = 0
  end

  def time_string
      sec = @seconds % 60
      min = @seconds / 60 % 60
      hr = @seconds / 3600 % 60
      hr_s = hr.to_s.rjust(2, "0")
      min_s = min.to_s.rjust(2, "0")
      sec_s = sec.to_s.rjust(2, "0")
      "#{hr_s}:#{min_s}:#{sec_s}"
  end
end
