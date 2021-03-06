FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "123456789"
    password_confirmation "123456789"
  end

  factory :admin_user do
    email "ivana@example.com"
    password 'password'
    password_confirmation 'password'
  end

  factory :product do
  	sequence(:name) { |n| "product_#{n}lala"}
    bar_code { "11111111" }
  end

  factory :supermarket do
  	sequence(:name) { |n| "market_#{n}"}
  end

  factory :pricemeasure do
    price {rand(50.00)}
    measured_at {rand(50).days.ago}
    discount true
    product
    bar_code {product.bar_code}
    supermarket
  end

  factory :list do
    sequence(:name) { |n| "list_#{n}"}
  end

  factory :listitem do
    product
    user
    list
  end

end
