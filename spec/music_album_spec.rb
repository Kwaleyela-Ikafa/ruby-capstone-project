require_relative 'spec_helper'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new('2022', true, 'Pinkerton', 'Rock')
  end

  it 'Should be an instance of the MusicAlbum class' do
    expect(@album).to be_instance_of MusicAlbum
  end

  context 'Testing Album class instance variables' do
    it 'Should have a date of 2022' do
      date = @album.publish_date
      expect(date).to eql '2022'
    end

    it 'Should have a spotify status of true' do
      spotify = @album.on_spotify
      expect(spotify).to eql true
    end

    it 'Should be called Pinkerton' do
      name = @album.name
      expect(name).to eql 'Pinkerton'
    end

    it 'Should have the Genre of Rock' do
      type = @album.genre
      expect(type).to eql 'Rock'
    end
  end

  context 'Testing Album class methods' do
    it 'Should not be archivable' do
      album = MusicAlbum.new('2022', true, 'Pinkerton', 'Rock')
      archive = album.can_be_archived?
      expect(archive).to be_falsy
    end
  end
end
