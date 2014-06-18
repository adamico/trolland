require 'spec_helper'

feature 'Admin creates pages' do
  given!(:user) { create(:user) }
  given!(:admin) { create(:admin) }

  scenario 'can create if admin' do
    sign_in admin
    visit new_page_path
    create_page('foo')
    expect(page).to have_content 'foo VS bar'
  end

  scenario 'prevent normal user to create' do
    sign_in user
    visit new_page_path
    expect(page).to have_content(/not authorized/i)
  end

  def create_page(title)
    fill_in 'page_side', with: 'foo'
    fill_in 'page_other_side', with: 'bar'
    click_on 'Create page'
  end
end
