require_relative 'mediator_interfaz'

class AdoptionMediator < MediatorInterfaz
  def initialize
    @participants = []
  end

  def register(participant)
    @participants << participant
  end

  def notify(sender, event)
    @participants.each do |participant|
      puts "sending notification to #{participant}"
      participant.receive_notification(sender, event) unless participant == sender
    end
  end
end