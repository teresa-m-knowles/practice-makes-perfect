require 'rails_helper'

RSpec.describe House do
  before :each do
    attributes = {
      id: 1,
      name: 'Gryffindor'
    }
    @house = House.new(attributes)
  end
  it 'exists' do
    expect(@house).to be_a(House)
  end

  it 'has an id' do
    expect(@house.id).to eq(1)
  end

  it 'has a name' do
    expect(@house.name).to eq('Gryffindor')
  end

end
