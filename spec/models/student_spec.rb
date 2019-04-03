require 'rails_helper'

RSpec.describe Student do
  before :each do
    attributes = {
      id: 1,
      name: 'Luna Lovegood'
    }
    @student = Student.new(attributes)
  end

  it 'exists' do
    expect(@student).to be_a(Student)
  end

  it 'has an id' do
    expect(@student.id).to eq(1)
  end

  it 'has a name' do
    expect(@student.name).to eq('Luna Lovegood')
  end

end
