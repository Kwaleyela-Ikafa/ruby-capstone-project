require_relative 'spec_helper'

describe Item do
  before :each do
    @item = Item.new
  end

  it 'book should be an instance of Item Class' do
    expect(@item).to be_instance_of Item
  end

  context 'Testing instance variable of Item Class' do
    it 'should return the publish date' do
      publish_date = @item.publish_date.year
      expect(publish_date).to eql 2022
    end

    it 'Should not be archived' do
      archived = @item.archived
      expect(archived).to eql false
    end
  end

  context 'Testing methods of Item Class' do
    it 'should return archive true' do
      archive = @item.move_to_archive
      expect(archive).to eql false
    end
  end

  context 'Testing Setters' do
    it 'should return the Label' do
      @item.label = Label.new('Gift', 'Red')
      label = @item.label.title
      expect(label).to eql 'Gift'
    end

    it 'should return the author' do
      @item.author = Author.new('Jack', 'Carr')
      author = @item.author.first_name
      expect(author).to eql 'Jack'
    end

    it 'should return the genre' do
      @item.genre = Genre.new('Rock')
      genre = @item.genre.name
      expect(genre).to eql 'Rock'
    end

    it 'should return the source' do
      @item.source = Source.new('Friend')
      source = @item.source.name
      expect(source).to eql 'Friend'
    end
  end
end
