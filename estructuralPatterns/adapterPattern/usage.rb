require_relative 'transaction_adapter'
include Gateway

gateway_transaction = Gateway.payment_transaction_response
adapter = TransactionAdapter.new(gateway_transaction)
adapter.return_xml_response