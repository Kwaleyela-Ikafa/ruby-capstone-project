require_relative 'spec_helper'

describe Genre do
  before :each do
    @genre = Genre.new('Rock')
  end

  it 'Should be an instance of the MusicAlbum class' do
    expect(@genre).to be_instance_of Genre
  end

  context 'Testing Album class instance variables' do
    it 'Should have a date of 2022' do
      name = @genre.name
      expect(name).to eql 'Rock'
    end
  end
end
