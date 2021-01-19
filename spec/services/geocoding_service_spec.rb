require 'rails_helper'

describe GeocodingService do
  context 'instance methods' do
    context '#location' do
      it 'returns current weather of selected city, state' do
        state_data = GeocodingService.location('Denver', 'CO')
        hash = state_data[:results][0][:locations][0]

        expect(hash[:adminArea5]).to eq('Denver')
        expect(hash[:adminArea3]).to eq('CO')
        expect(hash[:latLng][:lat]).to be_a(Float)
        expect(hash[:latLng][:lat]).to eq(39.738453)
        expect(hash[:latLng][:lng]).to be_a(Float)
        expect(hash[:latLng][:lng]).to eq(-104.984853)
      end
    end
  end
end
