class ZomatoService

  def self.search_by_city(lat, lon)
    response = conn.get("com/api/v2.1/cities?lat=#{lat}&lon=#{lon}")
  end
  def self.conn
    Faraday.new(url: 'https://https://developers.zomato.com') do |faraday|
      faraday.headers['user-key'] = ENV['ZOMATO_KEY']
    end
  end
end
