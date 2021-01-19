class City
  attr_reader :name,
              :state,
              :lat,
              :lng


  def initialize(data)
    @name = data[:results][0][:locations][0][:adminArea5]
    @state = data[:results][0][:locations][0][:adminArea3]
    @lat = data[:results][0][:locations][0][:latLng][:lat]
    @lng = data[:results][0][:locations][0][:latLng][:lng]
  end

end
