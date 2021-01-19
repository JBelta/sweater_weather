class GeocodingService

  def self.location(city, state)
    response = conn.get("/geocoding/v1/address?location=#{city},#{state}")
    json = JSON.parse(response.body, symbolize_names: true)

  end

  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com/') do |faraday|
      faraday.params['key'] = ENV['GEOCODING_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
