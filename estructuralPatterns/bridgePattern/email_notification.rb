# implementaciones concretas de la abstracción

require_relative 'notifier'

class EmailNotification < Notifier
  attr_reader :email, :subject, :text

  def initialize(email, subject, msg)
    @email = email
    @subject = subject    
    @msg = msg
  end

  def notify
    puts "sending email notification to #{@email} - subject: #{@subject}"
  end
end