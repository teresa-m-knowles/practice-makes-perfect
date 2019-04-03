require 'rails_helper'

RSpec.describe StudentsFacade do
  it 'exists' do
    facade = StudentsFacade.new("Slytherin")
    expect(facade).to be_a(StudentsFacade)
  end

  it 'is initialized with a house' do
    facade = StudentsFacade.new("Slytherin")
    expect(facade.house).to eq("Slytherin")
  end

  it 'can get an array of students' do
    facade = StudentsFacade.new("Slytherin")
    expect(facade.students.count).to eq(22)
    facade.students.each do |student|
      expect(student).to be_a(Student)
    end
  end

  it 'can get a count on students' do
    facade = StudentsFacade.new("Slytherin")

    expect(facade.students_count).to eq(22)
  end

  it 'can create a new hogwarts service' do
    facade = StudentsFacade.new("Slytherin")
    expect(facade.service).to be_a(HogwartsService)
  end

  describe 'can get an array of house objects' do
    it 'houses' do
      facade = StudentsFacade.new("Slytherin")
      facade.houses.each do |house|
        expect(house).to be_a(House)
      end
      expect(facade.houses.count).to eq(4)
    end

  end

  describe 'can find its house id' do
    it 'find_house_id' do
      facade = StudentsFacade.new("Slytherin")

      expect(facade.find_house_id).to eq(4)
    end
  end
end
