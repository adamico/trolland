module AuthMacros
  def sign_in(user = nil)
    visit login_path
    fill_in 'user_email',    with: user.email
    fill_in 'user_password', with: user.password
    click_on 'Sign in'
  end
end
