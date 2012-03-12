FactoryGirl.define do
  factory :post do
    title Forgery(:lorem_ipsum).words(5)
    body Forgery(:lorem_ipsum).words(10)
    tags nil
  end
end
