require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'J K Rowling'
        fill_in "book[price]", with: '9.99'
        fill_in "book[date]", with: '09/04/2023'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
        expect(page).to have_content('J K Rowling')
        expect(page).to have_content('9.99')
        expect(page).to have_content('2023-04-09 00:00:00 UTC')
    end
end