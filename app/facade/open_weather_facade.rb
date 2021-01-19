class OpenWeatherFacade

  def self.weather_now(lat, lon)
    #binding.pry
    state_info = OpenWeatherService.current_weather(lat, lon)
    uv_info =
    OpenWeatherService.ultraviolet(lat, lon)

    data = state_info.merge(uv_info)
    binding.pry
    CityCurrentWeather.new(data)
  end
end
