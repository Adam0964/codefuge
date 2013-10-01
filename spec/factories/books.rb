# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    author "MyString"
    pubDate 1
    description "MyText"
  end
end
