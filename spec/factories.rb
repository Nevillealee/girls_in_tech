FactoryBot.define do
    factory :user do
        sequence :email do |n|
            "fakeemail#{n}@gmail.com"
        end
        password "imaginedragon"
        password_confirmation "imaginedragon"
    end
    
    factory :student do
        name "john Q"
        studentId "1316992"
        dob "1800-11-14"
        grade "2"
        service_program "Gen Ed"
    end
end
