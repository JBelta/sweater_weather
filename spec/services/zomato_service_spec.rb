require 'rails_helper'

describe ZomatoService do
  context 'It can find resturaunts with lat and long' do
    denver = GeocodingFacade.city_location('denver', 'co')
    pueblo = GeocodingFacade.city_location('pueblo', 'co')
binding.pry
    outcome_denver = ZomatoService.search_by_city(denver.lat, denver.lng)

    outcome_pueblo = ZomatoService.search_by_city(pueblo.lat, pueblo.lng)

    binding.pry
  end
end
