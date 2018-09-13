FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "User-#{n}" }
    sequence(:email){ |n| "user-#{n}@example.com" }
    password "password"

    trait(:teacher) do
      role { build(:teacher) }
    end

    trait(:student) do
      role { build(:student) }
    end
  end



  factory :course do
    name "Architecture"
    semester "Fall 2018"
  end

  factory :teacher do
  end

  factory :student do
  end

end
