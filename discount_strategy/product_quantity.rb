class ProductQuantity < Base
  def apply
    apply_product_quantity_discount
  end

  private

  def apply_product_quantity_discount
    quantity = items.count(options[:product_id])
    if quantity >= options[:required_quantity]
      full_price = products[options[:product_id]].price
      discount_amount = full_price * options[:discount_rate]
      discount_amount * (quantity / options[:required_quantity])
    else
      0
    end
  end
end
