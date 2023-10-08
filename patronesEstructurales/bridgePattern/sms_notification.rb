# implementaciones concretas de la abstracción

require_relative 'notifier'

class SmsNotification < Notifier
  attr_reader :destination, :text

  def initialize(destination, msg)
    @destination = destination    
    @msg = msg
  end

  def notify
    puts "sending sms notification to #{@destination} - message: #{@msg}"
  end
end