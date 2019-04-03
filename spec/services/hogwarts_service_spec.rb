require 'rails_helper'

RSpec.describe HogwartsService do
  before :each do
    @service = HogwartsService.new
  end

  describe 'it can create a connection' do
    it 'conn' do
      expect(@service.conn).to be_a(Faraday::Connection)
      expect(@service.conn.host).to eq("hogwarts-as-a-service.herokuapp.com")
    end
  end

  describe 'it can get students from a house with a house id' do
    it 'get_students' do
      json = @service.get_students(4)
      expect(json.count).to eq(22)
    end
  end

  describe 'it can get a hash of each house with its id and name' do
    it 'get_houses' do
      first_house = @service.get_houses.flatten.first

      expect(first_house[:name]).to eq("Gryffindor")
    end
  end
end
