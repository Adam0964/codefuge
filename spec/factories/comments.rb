# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    post_id 1
    text "MyText"
  end
end
