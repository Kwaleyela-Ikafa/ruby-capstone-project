require_relative 'spec_helper'

describe Movie do
  before :each do
    @movie = Movie.new('New Movie', 'Friend', '12-12-2022', silent: true)
  end

  it 'Should be an instance of the Movie class' do
    expect(@movie).to be_instance_of Movie
  end

  it 'Should have a silent status of true' do
    silent = @movie.silent
    expect(silent).to eql true
  end

  it 'Should be called New Movie' do
    name = @movie.name
    expect(name).to eql 'New Movie'
  end

  it 'Its source should be Friend' do
    source = @movie.source
    expect(source).to eql 'Friend'
  end
end

context 'Testing Movie class methods' do
  it 'can be archived' do
    @movie = Movie.new('New Movie', 'Friend', '12-12-2022', silent: true)
    archive = @movie.can_be_archieved?
    expect(archive).to eql true
  end
end
