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
    subtotal = calculate_subtotal
    discount = apply_discounts
    delivery_charge = calculate_delivery_charge(subtotal)

    (subtotal - discount + delivery_charge).round(2)
  end

  private

  def calculate_subtotal
    @items.reduce(0) do |sum, item_code|
      sum + @products[item_code].price
    end
  end

  def apply_discounts
    @discounts.reduce(0) do |total_discount, discount|
      strategy_class = Object.const_get(discount.strategy)
      strategy_class.new(@items, @products, discount.options).apply
    end
  end

  def calculate_delivery_charge(subtotal)
    @delivery_charges.find { |rule| rule.applicable?(subtotal) }.charge
  end
end
