require 'rspec'

RSpec.describe Basket do
  describe '#total' do
    it 'calculates the total for basket1 correctly' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('B01')
      basket.add('G01')
      expect(basket.total).to be_within(0.01).of(37.85)
    end

    it 'calculates the total for basket2 correctly' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('R01')
      basket.add('R01')
      expect(basket.total).to eq(52.38) 
    end

    it 'calculates the total for basket3 correctly' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('R01')
      basket.add('G01')
      expect(basket.total).to be_within(0.01).of(60.85)
    end

    it 'calculates the total for basket4 correctly' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('B01')
      basket.add('B01')
      basket.add('R01')
      basket.add('R01')
      basket.add('R01')
      expect(basket.total).to eq(98.28)
    end

    it 'fails when the total for basket1 is incorrect' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('B01')
      basket.add('G01')
      expect(basket.total).not_to eq(98.85)
    end

    it 'fails when the total for basket2 is incorrect' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('R01')
      basket.add('R01')
      expect(basket.total).not_to be_within(0.01).of(54.36)
    end

    it 'fails when the total for basket3 is incorrect' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('R01')
      basket.add('G01')
      expect(basket.total).not_to eq(60)
    end

    it 'fails when the total for basket4 is incorrect' do
      basket = Basket.new(PRODUCTS, DELIVERY_RULES, DISCOUNTS)
      basket.add('B01')
      basket.add('B01')
      basket.add('R01')
      basket.add('R01')
      basket.add('R01')
      expect(basket.total).not_to be_within(0.01).of(98.26)
    end
  end
end
