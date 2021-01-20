require 'rails_helper'

describe ZomatoService do
  context 'Connecting to Zomato api' do
    it 'can find resteraunts with lattitude and longitude' do
      denver = GeocodingFacade.city_location('denver', 'co')
      pueblo = GeocodingFacade.city_location('pueblo', 'co')
      food_1 = 'korean'
      food_2 = 'italian'

      outcome_denver = ZomatoService.search_by_city(food_1, denver.lat, denver.lng)
      outcome_pueblo = ZomatoService.search_by_city(food_2, pueblo.lat, pueblo.lng)
binding.pry
    #denver
      expect(outcome_denver).to be_a(Hash)
      expect(outcome_denver[:name]).to eq('Denver, CO')
    end
  end
end
