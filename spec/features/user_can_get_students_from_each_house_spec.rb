require 'rails_helper'

RSpec.feature 'A user can select a house from a dropdown menu and get a list of students' do
  describe 'As a user' do
    describe 'when I visit /' do
      describe 'And I select "Slytherin" from the dropdown' do
        describe 'And I click on "Get Students" ' do
          # Then my path should be "/search" with "house=slytherin" in the parameters
          it 'should redirect me to /search' do
            visit '/'
            select('Slytherin', from: :house)
            click_button("Get Students")
            expect(current_path).to eq(search_path)
          end
        end
      end
    end
  end
end
