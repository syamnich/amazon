require 'features/features_spec_helper'
feature 'show page' do
	let(:book){ create(:book) }
  let!(:book2){ create(:book) }
  background do
    visit book_path(book)
    
  end

  scenario "has right id css" do
    expect(page).to have_selector("#show")
  end

  scenario "contains book info" do
    expect(page).to have_content(book.title)
    expect(page).to have_content(book.author.decorate.full_name)
    expect(page).to have_content(book.description)
    expect(page).to have_content(book.price)
  end

  scenario "contain one book only" do
    expect(page).not_to have_content(book2.title)
  end

end