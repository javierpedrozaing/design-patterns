class Purchase
  attr_accessor :amount, :currency, :payment_method, :customer_info, :tax_amount

  def initialize
    @amount = 0
    @currency = ''
    @payment_method = ''
    @customer_info = ''
    @tax_amount = 0
  end
end