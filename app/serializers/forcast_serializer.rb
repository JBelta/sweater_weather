class ForcastSerializer
  def self.format(data)
    {
      'data': {
        'id': null,
        'type': 'forecast',
        'attributes': {
          'current_weather': data[0],
          'daily_weather': data[1],
          'hourly_weather': data[2]
        }
      }
    }
  end
end
