class CityHourlyWeather
  attr_reader :time,
              :temp,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon

  def initialize(data)
    @current = data[0]
    @hr_one = data[1]
    @hr_two = data[2]
    @hr_three = data[3]
    @hr_four = data[4]
    @hr_five = data[5]
    @hr_six = data[6]
    @hr_seven = data[7]
    @hr_eight = data[8]
  end
end
