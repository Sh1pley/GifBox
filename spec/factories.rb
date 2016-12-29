FactoryGirl.define do
  factory :user do
    name "testuser"
    email "test@test.com"
    password "boom"
  end

  factory :gif do
    url "https://giphy.com/embed/26ufhqlbeuJsUbvDG"
    category "Awesome"
  end
  
end