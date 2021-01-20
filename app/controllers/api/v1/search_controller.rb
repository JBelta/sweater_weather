class SearchController < ApplicationController

  def show
    city = GeocodingFacade(params[:city], params[:state])
    data = [
      OpenWeatherFacade.weather_now(city.lat, city.lng),
      OpenWeatherFacade.daily_weather(city.lat, city.lgn),
      OpenWeatherFacade.weather_hourly(city.lat, city.lgn)
    ]
    render json: ForcastSerializer.format(data)
  end
end
