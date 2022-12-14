require_relative 'spec_helper'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new('2022', true, 'Pinkerton', 'Rock')
  end

  it 'Should be an instance of the MusicAlbum class' do
    expect(@album).to be_instance_of MusicAlbum
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
    archive = album.can_be_archieved?
    expect(archive).to be_falsy
  end
end
