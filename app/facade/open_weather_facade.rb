class OpenWeatherFacade

  def self.weather_now(lat, lon)
    state_info = OpenWeatherService.current_weather(lat, lon)
    uv_info =
    OpenWeatherService.ultraviolet(lat, lon)
    data = state_info.merge(uv_info)
  end

  def self.weather_hourly(lat, lon)
    data = OpenWeatherService.hourly(lat, lon)
    #eight_hours = data[:list].take(8)
  end
end
