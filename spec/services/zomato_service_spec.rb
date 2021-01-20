require 'rails_helper'

describe ZomatoService do
  context 'It can find resturaunts with lat and long' do
    denver = GeocodingFacade.city_location('denver', 'co')
    pueblo = GeocodingFacade.city_location('pueblo', 'co')

    outcome = ZomatoService.search_by_city(denver.lat, denver.lng)

    binding.pry
  end
end
