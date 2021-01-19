require 'rails_helper'

describe CityCurrentWeather do
  it 'exist' do
    attr = {
      name: 'Denver',
      coord:{
        lat: 39.7392,
        lon: -104.9847,
      },
      dt: 1611033599,
      sys: {
        sunrise: 1610979458,
        sunset: 1611014575,
      },
      main: {
        temp: 26.56,
        feels_like: 19.02,
        humidity: 51,
      },
      value: 2,
      visibility: 10000,
      weather: [{
        description: 'sunny skies',
      }],
      icon: 'a string'
    }

  denver = CityCurrentWeather.new(attr)

  expect(denver.city).to eq('Denver')
  expect(denver.latitude).to eq(39.7392)
  expect(denver.longitude).to eq(-104.9847)
  expect(denver.date).to be_a(Time)
  expect(denver.sunrise).to be_a(Time)
  expect(denver.sunset).to be_a(Time)
  expect(denver.temp).to eq(26.56)
  expect(denver.feels_like).to eq(19.02)
  expect(denver.humidity).to eq(51)
  expect(denver.uvi).to eq(2)
  expect(denver.visibility).to eq(10000)
  expect(denver.conditions).to eq('sunny skies')
  expect(denver.icon).to eq('a string')
  end
end
