require 'rails_helper'

describe OpenWeatherService do
  context 'instance methods' do
    context '#current_weather' do
      it 'can get the lattitude and longitude from the GeocodingFacade and returns the current weather' do
        city = GeocodingFacade.city_location('Denver', 'CO')
        denver = OpenWeatherService.current_weather(city.lat, city.lng)

        expect(denver).to be_a(Hash)
        expect(denver[:dt]).to be_an(Integer)
        expect(denver[:sys][:sunrise]).to be_an(Integer)
        expect(denver[:sys][:sunset]).to be_an(Integer)
        expect(denver[:main][:temp]).to be_a(Float)
        expect(denver[:main][:feels_like]).to be_an(Float)
        expect(denver[:main][:humidity]).to be_an(Integer)
        expect(denver[:visibility]).to be_an(Integer)
        expect(denver[:dt]).to be_an(Integer)
        expect(denver[:weather][0][:description]).to be_a(String)
        expect(denver[:coord][:lat]).to be_a(Float)
        expect(denver[:coord][:lon]).to be_a(Float)
      end
    end
    it 'returns UV index of selected city' do
      city = GeocodingFacade.city_location('Denver', 'CO')

      uvi = OpenWeatherService.ultraviolet(city.lat, city.lng)

      expect(uvi[:value]).to be_a(Float)

      OpenWeatherFacade.weather_now(city.lat, city.lng)
    end
  end
end
