class Base
  attr_reader :items, :products, :options

  def initialize(items, products, options)
    @items = items
    @products = products
    @options = options
  end

  def apply
    raise NotImplementedError, 'Subclasses must implement the apply method'
  end
end
