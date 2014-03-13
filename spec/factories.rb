FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "123456789"
    password_confirmation "123456789"

    factory :admin do
      admin true
    end
  end

  factory :product do
  	sequence(:name) { |n| "product_#{n}"}
  	image "smoki.jpeg"
  end

  factory :supermarket do
  	sequence(:name) { |n| "market_#{n}"}
  end

  factory :pricemeasure do |pm|
    product
    supermarket
    price 5
    measured_at DateTime.now
    discount false
  end

end
