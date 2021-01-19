class OpenWeatherService


  def self.current_weather(state)
    response = conn.get("/data/2.5/weather?q=#{state}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.openweathermap.org') do |faraday|
      faraday.params['APPID'] = ENV["OPENWEATHER_API_KEY"]
      faraday.params['units'] = 'imperial'
      faraday.adapter Faraday.default_adapter
    end
  end
end
