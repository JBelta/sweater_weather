class OpenWeatherFacade

  def self.weather_now(state)
    city = GeocodingFacade
    state_info = OpenWeatherService.current_weather(city.lat, city.lon)
    uv_info =
    OpenWeatherService.ultraviolet(city.lat, city.lon)

    data = state_info.merge(uv_info)
    binding.pry
    CityCurrentWeather.new(data)
  end
end
