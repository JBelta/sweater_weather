require 'rails_helper'

describe Restaurant do
  it 'exist' do
    attr = {
        name: "Tony's Pizza",
        address: '123 Fake St.',
        latitude: 12.345,
        longitude: -54.321,
      }
      
    restaurant = Restaurant.new(attr)

    expect(restaurant.name).to eq("Tony's Pizza")
    expect(restaurant.address).to eq('123 Fake St.')
    expect(restaurant.lat).to eq(12.345)
    expect(restaurant.lon).to eq(-54.321)
  end
end
