# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    email "MyString"
    subject "MyString"
    description "MyString"
    first_name "MyString"
    last_name "MyString"
  end
end
