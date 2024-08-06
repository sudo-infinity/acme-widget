class Basket
  def initialize(products, delivery_charges, discounts)
    @products = products
    @delivery_charges = delivery_charges
    @discounts = discounts
    @items = []
  end

  def add(product_code)
    @items << product_code
  end

  def total
  end
end
