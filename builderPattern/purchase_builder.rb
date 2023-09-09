require_relative 'builder_interface'
require_relative 'purchase'

class PurchaseBuilder
  include BuilderInterface
  
  def initialize
    @purchase = Purchase.new
  end

  def with_amount(amount)
    @purchase.amount = amount
    self
  end

  def with_currency(currency)
    @purchase.currency = currency
    self
  end

  def with_payment_method(payment_method)
    @purchase.payment_method = payment_method
    self
  end

  def with_customer_info(customer_info)
    @purchase.customer_info = customer_info
    self
  end

  def with_tax_amount(tax_amount)
    @purchase.tax_amount = tax_amount
    self
  end

  def build_transaction
    puts "Type transaction created #{@purchase}"
    
    transaction = {
      amount: @purchase.amount,
      currency: @purchase.currency,
      payment_method: @purchase.payment_method,
      customer_info: @purchase.customer_info,
      tax_amount: @purchase.tax_amount,
    }

    puts transaction
  end
end