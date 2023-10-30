# concrete mediator

class Pet
  attr_accessor :mediator

  def initialize(mediator)
    @mediator = mediator
  end

  def request_adoption(adopter)
    # Logic to request adoption
    @mediator.notify(self, "AdoptionRequested")
  end
end