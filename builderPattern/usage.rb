require_relative 'purchase_builder'
require_relative 'transaction_director'

director = TransactionDirector.new
director.build_credit_card_purchase(100, 'USD', 'credit_card')

director.build_partial_refund(50)
