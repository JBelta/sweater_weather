class OpenWeatherService


  def self.current_weather(lat, lon)
    response = conn.get("/data/2.5/weather?lat=#{lat}&lon=#{lon}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.ultraviolet(lat, lon)
    response = conn.get("/data/2.5/uvi?lat=#{lat}&lon=#{lon}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.hourly(lat, lon)
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=daily&units=imperial")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.daily(lat, lon)
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=hourly&units=imperial")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.openweathermap.org') do |faraday|
      faraday.params['APPID'] = ENV["OPENWEATHER_API_KEY"]
      faraday.params['units'] = 'imperial'
      faraday.adapter Faraday.default_adapter
    end
  end
end
