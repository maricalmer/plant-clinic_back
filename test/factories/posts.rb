FactoryBot.define do
  factory :post do
    user
    sequence(:title) { |i| "Post #{i}" }
    sequence(:description) { |i| "Post #{i} description" }
  end
end
