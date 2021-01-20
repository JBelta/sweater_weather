class ZomatoService

  def self.search_by_city(food, lat, lon)
    response = conn.get("/api/v2.1/search?q=#{food}lat=#{lat}&lon=#{lon}")
    JSON.parse(response.body, symbolize_names: true)
  end
  def self.conn
    Faraday.new(url: 'https://developers.zomato.com') do |faraday|
      faraday.headers['user-key'] = ENV['ZOMATO_KEY']
    end
  end
end
