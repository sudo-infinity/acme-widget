require 'rspec'

RSpec.describe DeliveryCharge do
  before(:each) do
    @delivery_charge = DeliveryCharge.new(0, 50, 4.95)
  end

  describe '#applicable?' do
    context 'when the amount is within the range' do
      it 'returns true for the lower bound of the range' do
        expect(@delivery_charge.applicable?(0)).to be true
      end

      it 'returns true for amounts exactly at the lower bound of the range' do
        expect(@delivery_charge.applicable?(50)).to be false
      end

      it 'returns true for amounts within the range' do
        expect(@delivery_charge.applicable?(30)).to be true
      end
    end

    context 'when the amount is outside the range' do
      it 'returns false for amounts below the lower bound of the range' do
        expect(@delivery_charge.applicable?(-10)).to be false
      end

      it 'returns false for amounts exactly above the upper bound of the range' do
        expect(@delivery_charge.applicable?(51)).to be false
      end

      it 'returns false for amounts well above the upper bound of the range' do
        expect(@delivery_charge.applicable?(100)).to be false
      end
    end

    context 'when the range is large' do
      before(:each) do
        @large_range_delivery_charge = DeliveryCharge.new(0, 1000, 4.95)
      end

      it 'returns true for amounts within the new larger range' do
        expect(@large_range_delivery_charge.applicable?(500)).to be true
      end

      it 'returns false for amounts outside the new larger range' do
        expect(@large_range_delivery_charge.applicable?(1001)).to be false
      end
    end
  end
end
