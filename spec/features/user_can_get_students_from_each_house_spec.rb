require 'rails_helper'

RSpec.feature 'A user can select a house from a dropdown menu and get a list of students' do
  describe 'As a user' do
    describe 'when I visit /' do
      describe 'And I select "Slytherin" from the dropdown' do
        describe 'And I click on "Get Students" ' do
          # Then my path should be "/search" with "house=slytherin" in the parameters
          before :each do
            visit '/'
            select('Slytherin', from: :house)
            click_button("Get Students")

          end
          it 'should redirect me to /search' do
            expect(current_path).to eq(search_path)
          end

          it 'should show a message "22 Students"' do
            expect(page).to have_content("22 Students")
          end

          it 'should show a list of 22 Slytherin students' do
            results = page.all('.student')
            expect(results.count).to eq(22)

          end

          it 'should show the name and id for each student' do
            results = page.all('.student')

            expect(results.first).to have_content("Name: Gormlaith Gaunt")
            expect(results.first).to have_content("ID: 52")

          end
        end
      end
    end
  end
end
