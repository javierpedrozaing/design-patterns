require_relative 'purchase_builder'
require_relative 'refund_builder'

class TransactionDirector
  def build_credit_card_purchase(amount, currency, payment_method)
    PurchaseBuilder.new
      .with_amount(amount)
      .with_currency(currency)
      .with_payment_method(payment_method)
      .build_transaction
  end

  def build_ach_purchase(amount, currency, payment_method)
    PurchaseBuilder.new
      .with_amount(amount)
      .with_currency(currency)
      .with_payment_method(payment_method)
      .with_customer_info({name: 'jose', email: 'jose@gmail.com'})
      .build_transaction
  end

  def build_partial_refund(amount)
    RefundBuilder.new('asddsf234324')
      .partial_refund(amount)      
  end

  def build_total_refund
    RefundBuilder.new('asddsf234324').total_refund
  end
end