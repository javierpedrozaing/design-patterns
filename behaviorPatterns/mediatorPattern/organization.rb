require_relative 'user'

class Organization < User
  def receive_notification(sender, event)
    # Logic to handle adoption events
    puts "Adopter received notification: #{event}"
  end
end