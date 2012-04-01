FactoryGirl.define do

  sequence :title do |n|
    Forgery(:lorem_ipsum).words(5) + " " + n.to_s
  end

  factory :post do
    title
    body Forgery(:lorem_ipsum).words(10)
    tags nil
  end

end
