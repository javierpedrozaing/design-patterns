require_relative 'adoption_mediator'
require_relative 'pet'
require_relative 'adopter'
require_relative 'organization'

adoption_mediator = AdoptionMediator.new

pet = Pet.new(adoption_mediator)
adopter = Adopter.new('javier', 'javier@gmail-com', '311111111')
organization =  Organization.new('MyPET', 'mypet@gmail-com', '344444444')

adoption_mediator.register(adopter)
adoption_mediator.register(organization)

pet.request_adoption(organization)


