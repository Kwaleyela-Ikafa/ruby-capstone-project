require_relative '../classes/game'

describe 'Testing the games class implementation' do
  before(:each) do
    @games = Game.new(true, '01-01-2090')
  end

  it 'Returns the class instance' do
    expect(@games).to be_instance_of Game
  end

  it 'Return the superclass of Game' do
    expect(Game.superclass).to eq(Item)
  end
end