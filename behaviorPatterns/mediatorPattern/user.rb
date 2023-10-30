class User
  attr_reader :name, :email, :phone

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
  end

  def receive_notification(sender, event)
    # Logic to handle adoption events
    puts "User received notification: #{event}"
  end
end