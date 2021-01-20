require 'rails_helper'

describe ZomatoService do
  context 'Connecting to Zomato api' do
    it 'can find resteraunts with lattitude and longitude' do
      denver = GeocodingFacade.city_location('denver', 'co')
      pueblo = GeocodingFacade.city_location('pueblo', 'co')

      outcome_denver = ZomatoService.search_by_city(denver.lat, denver.lng)[:location_suggestions].first
      outcome_pueblo = ZomatoService.search_by_city(pueblo.lat, pueblo.lng)[:location_suggestions].first

    #denver
      expect(outcome_denver).to be_a(Hash)
      expect(outcome_denver[:name]).to eq('Denver, CO')
    end
  end
end
