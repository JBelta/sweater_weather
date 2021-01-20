class Restaurant
  attr_reader :name,
              :address,
              :lat,
              :lon

  def initialize(data)
    @name = data[:name]
    @address = data[:address]
    @lat = data[:latitude]
    @lon = data[:longitude]
  end
end
