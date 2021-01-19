require 'rails_helper'

describe OpenWeatherService do
  context 'instance methods' do
    context '#current_weather' do
      it 'returns current weather of selected city, state' do
        denver = OpenWeatherService.current_weather('Denver', 'CO')

        expect(denver).to be_a(Hash)
        expect(denver[:dt]).to be_an(Integer)
        expect(denver[:sys][:sunrise]).to be_an(Integer)
        expect(denver[:sys][:sundown]).to be_an(Integer)
        expect(denver[:main][:temp]).to be_an(Integer)
        expect(denver[:main][:feels_like]).to be_an(Integer)
        expect(denver[:main][:humidity]).to be_an(Integer)
        expect(denver[:visability]).to be_an(Integer)
        expect(denver[:dt]).to be_an(Integer)
        expect(denver[:weather][:description]).to be_a(String)
      end
    end



  end
end
