class PetHistory
 def initialize(pet)
  @history = []
  @pet = pet
 end

 def save_snapchot(pet)
  puts "saved snapchot "
  @history << @pet.create_memento
  
 end

 def restore_snapshot
  last_pet_state = @history.pop
  begin
    @pet.restore_from_memento(last_pet_state)
  rescue StandardError
    puts "error"
  end
  
 end
end