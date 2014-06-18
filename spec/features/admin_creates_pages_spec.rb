require 'spec_helper'

feature 'Admin creates pages' do
  scenario 'can create if admin' do
    admin_signs_in
    visit new_page_path
    create_page('foo')
    expect(page).to have_content 'foo'
  end

  scenario 'prevent normal user to create' do
    user_signs_in
    visit new_page_path
    expect(page).to have_content(/not authorized/i)
  end

  def admin_signs_in
    user = create(:admin)
    visit login_path
    fill_in 'user_email',    with: user.email
    fill_in 'user_password', with: user.password
    click_on 'Sign in'
  end

  def user_signs_in
    user = create(:user)
    visit login_path
    fill_in 'user_email',    with: user.email
    fill_in 'user_password', with: user.password
    click_on 'Sign in'
  end

  def create_page(title)
    fill_in 'page_title', with: 'foo'
    click_on 'Create page'
  end
end
