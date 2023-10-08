require 'nokogiri' # library to analize xml 

module Erp
  def get_payment_transaction(transaction_result)

    return unless validate_xml_format(transaction_result)
    
    puts transaction_result
  end

  private

  def validate_xml_format(transaction_result)
    begin
      Nokogiri::XML(transaction_result)
      return true
    rescue Nokogiri::XML::SyntaxError
      return false
    end
  end
end