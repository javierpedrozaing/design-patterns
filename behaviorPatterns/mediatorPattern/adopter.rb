require_relative 'user' 

class Adopter < User
  def receive_notification(sender, event)
    # Logic to handle adoption events
    puts "Adopter received notification: #{event}"
  end
end