require 'rspec'

RSpec.describe Product do
  before(:each) do
    @product = Product.new('R01', 'Red Widget', 32.95)
  end

  describe '#initialize' do
    it 'sets the product code' do
      expect(@product.code).to eq('R01')
    end

    it 'sets the product name' do
      expect(@product.name).to eq('Red Widget')
    end

    it 'sets the product price' do
      expect(@product.price).to eq(32.95)
    end
  end
end
