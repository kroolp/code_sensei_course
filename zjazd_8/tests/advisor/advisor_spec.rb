require_relative "advisor"
require_relative "weather_service"

RSpec.describe Advisor do
  let(:advisor)         { Advisor.new(weather_service) }
  let(:weather_service) { instance_double(WeatherService, precipitation: precipitation, temperature: temperature) }

  describe "#clothes" do
    context "for a cold rainy day" do
      let(:precipitation) { 80 }
      let(:temperature)   { 13 }

      it "suggests raincoat" do
        expect(advisor.clothes).to eq :raincoat
      end
    end

    context "for a warm dry day" do
      let(:precipitation) { 20 }
      let(:temperature) { 28 }

      it "suggests t-shirt" do
        expect(advisor.clothes).to eq :t_shirt
      end
    end
  end
end
