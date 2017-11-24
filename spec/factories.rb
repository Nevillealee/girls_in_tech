FactoryGirl.define do
  factory :challenge do
    category "MyString"
  end
  factory :intervention do
    start_date "2017-11-02"
    end_date "2017-11-02"
    duration "9.99"
  end
  factory :case_carrier do
    name "MyString"
    title "MyString"
  end
  factory :report do
    context "MyString"
    category "MyString"
    description "MyString"
  end
  factory :staff_member do
    
  end
  factory :incident do
    
  end
  factory :student do
    
  end
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end
end