require 'features/features_spec_helper'
feature 'Home page' do
	let!(:book){ create(:book) }
  background do
    visit root_path
    
  end

  scenario "has right id css" do
    expect(page).to have_selector("#home")
  end

  scenario "contains book info" do
    expect(page).to have_content(book.title)
    expect(page).to have_content(book.author.decorate.full_name)
    expect(page).to have_content(book.description)
    expect(page).to have_content(book.price)
  end
end