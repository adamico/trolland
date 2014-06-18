require 'spec_helper'

feature 'User creates an account' do
  scenario 'with email and password credentials' do
    visit sign_up_path
    fill_in 'user_email',                 with: 'user@example.com'
    fill_in 'user_password',              with: 'secret1234'
    fill_in 'user_password_confirmation', with: 'secret1234'
    click_on 'Sign up'

    expect(current_path).to eq dashboard_path
  end
end
