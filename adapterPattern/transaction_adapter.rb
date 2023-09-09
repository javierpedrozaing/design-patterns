require 'json'
require 'nokogiri'
require_relative 'gateway'
require_relative 'erp'
require_relative 'to_xml_interface'

class TransactionAdapter
  include ToXmlInterface
  include Gateway
  include Erp

  def initialize(transaction_response)
    @transaction = transaction_response
  end

  def json_to_xml
    puts "JSON DATA: #{@transaction}}"
    xml_data = Nokogiri::XML(@transaction.to_json).to_xml
  end

  def return_xml_response
    gateway_transaction = payment_transaction_response
    get_payment_transaction(self.json_to_xml)
  end
end


