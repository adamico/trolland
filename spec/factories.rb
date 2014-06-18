# Read about factories at https://github.com/thoughtbot/factory_girl
#
FactoryGirl.define do
  factory :user do
    sequence(:email) { |i| "user#{i}@example.com"}
    password 'secret1234'
    password_confirmation { |user| user.password }
    role 'basic'
    factory :admin do
      role 'admin'
    end
  end
end
