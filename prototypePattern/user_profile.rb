class UserProfile
  attr_accessor :username, :email, :preferences

  def initialize(username, email)
    @username = username
    @email = email
    @preferences = {}
  end

  def clone
    # Use 'dup' to create a shallow copy of the object.
    new_profile = self.dup

    # Deep copy the preferences hash to ensure it's not shared with the original.
    new_profile.preferences = self.preferences.dup

    new_profile
  end
end

prototype_profile = UserProfile.new("prototype_user", "prototype@example.com")
prototype_profile.preferences["theme"] = "light"
prototype_profile.preferences["language"] = "English"

user1 = prototype_profile.clone
user1.username = "user1"
user1.preferences["theme"] = "dark"

user2 = prototype_profile.clone
user2.username = "user2"
user2.preferences["language"] = "Spanish"

puts "User 1: #{user1.username}, Email: #{user1.email}, Preferences: #{user1.preferences}"
puts "User 2: #{user2.username}, Email: #{user2.email}, Preferences: #{user2.preferences}"
