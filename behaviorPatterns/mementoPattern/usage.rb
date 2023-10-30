require_relative "pet"
require_relative "pet_history"

pet = Pet.new('en espera de adopción')

puts "Initial state => #{pet.state}"

pet_history = PetHistory.new(pet)
pet_history.save_snapchot(pet)

pet.add_state('solicitada en adopción')
pet.add_state('visitando mascota')

puts "\nRestore last saved state!\n"

pet_history.restore_snapshot



