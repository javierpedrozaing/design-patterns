require_relative 'refund'

class RefundBuilder
  include BuilderInterface
  
  def initialize(transaction_id)
    @transaction_id = transaction_id
    @refund = Refund.new(transaction_id)
  end

  def partial_refund(amount)
    puts "partial refund of #{amount} executed for transaction id #{@transaction_id}"
    self
  end

  def total_refund
    puts "Total refund executed for transaction id #{@transaction_id}"
    self
  end

  def build_transaction
    @refund
  end
end