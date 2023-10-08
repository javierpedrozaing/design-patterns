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
    # assumiendo que esta conversión funciona adecaudamente
    xml_data = Nokogiri::XML(@transaction.to_json).to_xml
    puts "XML DATA #{xml_data}"
  end

  def return_xml_response
    get_payment_transaction(self.json_to_xml)
  end
end


