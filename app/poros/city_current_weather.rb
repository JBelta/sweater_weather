class CityCurrentWeather
  attr_reader :city,
              :latitude,
              :longitude,
              :date,
              :sunrise,
              :sunset,
              :temp,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon

  def initialize(data)
    @city = data[:name]
    @latitude = data[:coord][:lat]
    @longitude = data[:coord][:lon]
    @date = Time.at(data[:dt])
    @sunrise = Time.at(data[:sys][:sunrise])
    @sunset = Time.at(data[:sys][:sunset])
    @temp = data[:main][:temp]
    @feels_like = data[:main][:feels_like]
    @humidity = data[:main][:humidity]
    @uvi = data[:value]
    @visibility = data[:visibility]
    @conditions = data[:weather][0][:description]
    @icon = data[:icon]
  end
end
