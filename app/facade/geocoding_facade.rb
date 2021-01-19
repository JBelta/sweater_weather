class GeocodingFacade
  def self.city_location(state, city)
    data = GeocodingService.location(state, city)
    City.new(data)
  end
end
