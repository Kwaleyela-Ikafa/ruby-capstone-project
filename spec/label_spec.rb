require_relative 'spec_helper'
require 'date'

describe Label do
  before :each do
    @label = Label.new('Balenciaga', 'Black')
  end

  describe '#new' do
    it 'takes 5 parameters and returns a label object' do
      expect(@label).to be_an_instance_of Label
    end
  end

  describe '#label' do
    it 'returns the correct label' do
      expect(@label.title).to eql 'Balenciaga'
    end
  end

  describe '#color' do
    it 'returns the correct color' do
      expect(@label.color).to eql 'Black'
    end
  end
end
