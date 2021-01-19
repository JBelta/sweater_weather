class OpenWeatherFacade

  def self.weather_now(state)
    state_info = OpenWeatherService.current_weather(state)
    uv_info =
    OpenWeatherService.ultraviolet(state_info[:coord][:lat], state_info[:coord][:lat])

    data = state_info.merge(uv_info)

    @current_weather = CityCurrentWeather.new(data)
  end
end
