class Pet
  attr_reader :state

  def initialize(state)    
    @state = state
  end

  def add_state(state)
    @state = state
    puts "addint state => #{@state}"
  end

  def create_memento
    Memento.new(@state)
  end

  def restore_from_memento(memento)        
     puts memento.get_state
  end

  private

  class Memento
    attr_reader :state

    def initialize(state)
      @state = state
    end

    def get_state
      @state
    end

  end
end