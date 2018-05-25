FactoryBot.define do
  factory :user do
    name "Joe"
    email 'test@test.com'
    password '123abc'
    password_confirmation '123456'
  end

  factory :admin, class: User do
    name "Admin"
    email 'test@test.com'
    password '123456'
    password_confirmation '123abc'
  end
end
