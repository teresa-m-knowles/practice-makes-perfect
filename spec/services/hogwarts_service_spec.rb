require 'rails_helper'

RSpec.describe HogwartsService do
  before :each do
    @service = HogwartsService.new
  end

  describe 'it can create a connection' do
    it 'conn' do
      expect(@service.conn).to be_a(Faraday::Connection)
      expect(@service.conn.host).to eq("hogwarts-it.herokuapp.com")
    end
  end

  describe 'it can get students' do
    it 'get_students' do
      json = @service.get_students("Slytherin")
      expect(json[:data].first[:attributes][:students].count).to eq(22)
    end
  end
end
