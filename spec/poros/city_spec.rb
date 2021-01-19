require 'rails_helper'

describe CityCurrentWeather do
  it 'exist' do
    attr = {
      results: [{
        locations: [{
          adminArea5: 'Denver',
          adminArea3: 'CO',
          latLng: {
            lat: 39.738453,
            lng: -104.984853
          }
          }]
        }]
    }

    city = City.new(attr)

    expect(city.name).to eq('Denver')
    expect(city.state).to eq('CO')
    expect(city.lat).to eq(39.738453)
    expect(city.lng).to eq(-104.984853)
  end
end
