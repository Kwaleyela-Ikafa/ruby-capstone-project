require_relative 'spec_helper'

# require 'date'

describe Book do
  before :each do
    @book = Book.new 'Publisher', 'good'
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

  # describe '#publish_date' do
  #   it 'returns the correct publish_date' do
  #     expect(@book.publish_date.year.to_s).to eql '2022'
  #   end
  # end

  it 'should inherit behavior from Parent' do
    expect(Book.superclass).to eq(Item)
  end
end
