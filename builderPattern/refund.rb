class Refund
  attr_accessor :transaction_id

  def initialize(transaction_id)    
    @transaction_id = transaction_id
  end
end