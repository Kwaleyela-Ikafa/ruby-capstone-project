require_relative '../classes/author'

describe 'Testing the Author class implementation' do
  before(:each) do
    @author = Author.new('Dooge', 'Jones')
  end

  it 'Return first name on the instance' do
    name = @author.first_name
    expect(name).to eql 'Dooge'
  end

  it 'Return the instance of the class' do
    expect(@author).to be_instance_of Author
  end
end