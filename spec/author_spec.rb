require_relative '../classes/author'
require_relative '../classes/item'

describe 'Testing the Author class implementation' do
  before(:each) do
    @author = Author.new('Dooge', 'Jones')
    @item = Item.new
    @author.add_item(@item)
  end

  it 'Return first name on the instance' do
    name = @author.first_name
    expect(name).to eql 'Dooge'
  end

  it 'Return the instance of the class' do
    expect(@author).to be_instance_of Author
  end

  it 'return the item array length of class instance' do
    expect(@author.items.length).to be > 0
  end
end
