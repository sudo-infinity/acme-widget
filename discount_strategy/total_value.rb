class TotalValue < Base

  def apply
    apply_total_value_discount
  end

  private

  def apply_total_value_discount
    total = items.reduce(0) { |sum, item_code| sum + products[item_code].price }
    total >= options[:threshold] ? total * options[:discount_rate] : 0
  end
end
