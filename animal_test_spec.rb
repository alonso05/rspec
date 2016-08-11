require_relative 'animal'

describe 'Test Animal Class' do
  it 'should get initialized name' do
    #create an animal class object and initialize it
    #pass som variables to the constructor
    animal = Animal.new('dino', 5)
    
    #get the name value
    nameValue = animal.getName
    #and check that it is correct
    
    puts nameValue
  end
end