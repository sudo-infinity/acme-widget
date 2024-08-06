require 'rspec'

RSpec.describe Discount do
  before(:each) do
    @discount = Discount.new('TotalValue', threshold: 50, discount_rate: 0.1)
  end

  describe 'initialization' do
    it 'sets the correct strategy' do
      expect(@discount.strategy).to eq('TotalValue')
    end

    it 'sets the correct options' do
      expect(@discount.options).to eq({ threshold: 50, discount_rate: 0.1 })
    end
  end
end
