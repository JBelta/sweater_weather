require 'rails_helper'

describe ZomatoService do
  context 'Connecting to Zomato api' do
    it 'can find resteraunts with lattitude and longitude' do
      denver = GeocodingFacade.city_location('denver', 'co')
      pueblo = GeocodingFacade.city_location('pueblo', 'co')
      food_1 = 'korean'
      food_2 = 'italian'

      outcome_denver = ZomatoService.search_by_city(food_1, denver.lat, denver.lng)[:restaurants]
      outcome_pueblo = ZomatoService.search_by_city(food_2, pueblo.lat, pueblo.lng)[:restaurants]

    #denver
      expect(outcome_denver).to be_an(Array)
      expect(outcome_denver.first).to be_an(Hash)
      expect(outcome_denver[0][:restaurant][:name]).to be_a(String)
    #pueblo
      expect(outcome_pueblo).to be_an(Array)
      expect(outcome_pueblo.first).to be_an(Hash)
      expect(outcome_pueblo[0][:restaurant][:name]).to be_a(String)
    #different data
      expect(outcome_denver[0][:restaurant][:name]).to_not eq(expect(outcome_pueblo[0][:restaurant][:name]))
    end
  end
end
