require_relative 'spec_helper'

describe Source do
  before :each do
    @source = Source.new('Friend')
  end

  it 'Should be an instance of the Source class' do
    expect(@source).to be_instance_of Source
  end
  it 'Should have a name of Friend' do
    expect(@source.name).to eql 'Friend'
  end
  context 'Testing Source class methods' do
    it 'should be working properly' do
      @movie = Movie.new('New Movie', 'Friend', '12-12-2022', silent: true)
      @source = Source.new('Friend')
      @source.add_item(@movie)
      items = @source.items
      expect(items).to include @movie
      expect(@movie.source).to be @source
    end
  end
end
