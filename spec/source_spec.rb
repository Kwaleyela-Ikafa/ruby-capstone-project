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
end
