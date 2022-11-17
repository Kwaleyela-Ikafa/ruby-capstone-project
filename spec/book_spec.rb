require_relative 'spec_helper'

# require 'date'

describe Book do
  before :each do
    @book = Book.new('title', 'Publisher', 'good')
  end

  describe '#new' do
    it 'takes 5 parameters and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#publisher' do
    it 'returns the correct publisher' do
      expect(@book.publisher).to eql 'Publisher'
    end
  end

  describe '#cover_state' do
    it 'returns the correct publisher' do
      expect(@book.cover_state).to eql 'good'
    end
  end

  it 'should inherit behavior from Parent' do
    expect(Book.superclass).to eq(Item)
  end

  it 'Should not be archivable' do
    archive = @book.can_be_archieved?
    expect(archive).to be_falsy
  end
end
