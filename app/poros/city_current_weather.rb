class CityCurrentWeather
  attr_reader :city,
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
    @date = Time.at(data[:dt])
    @sunrise = data[:sys][:sunrise]
    @sunset = data[:sys][:sunset]
    @temp = data[:main][:temp]
    @feels_like = data[:main][:feels_like]
    @humidity = [:main][:humidity]
    @uvi = data[:value]
    @visibility = [:visibility]
    @conditions = data[:weather][0][:description]
    @icon = ''
  end
end
