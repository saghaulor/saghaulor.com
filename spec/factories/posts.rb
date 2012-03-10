FactoryGirl.define do
  factory :post do
    title nil
    body Forgery(:lorem_ipsum).words(10)
    tag nil
  end
end
