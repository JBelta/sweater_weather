class OpenWeatherFacade

  def self.weather_now(lat, lon)
    state_info = OpenWeatherService.current_weather(lat, lon)
    uv_info =
    OpenWeatherService.ultaraviolet(lat, lon)
    data = state_info.merge(uv_info)
    CityCurrentWeather.new(data)
  end

  def self.weather_hourly(lat, lon)
    data = OpenWeatherService.hourly(lat, lon)
    CityHourlyWeather.new(data)
  end

  def self.daily_weather(lat, lon)
    data = OpenWeatherService.daily(lat, lon)
    CityDailyWeather.new(data)
  end
end
