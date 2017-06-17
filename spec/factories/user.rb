FactoryGirl.define do
  factory :user do
    email 'example@example.com'
    password 'please'
    password_confirmation 'please'
    confirmed_at Time.now

    factory :admin do
      after(:create) {|user| user.add_role(:admin)}
    end

    factory :curator do
      after(:create) {|user| user.add_role(:curator)}
    end

    factory :super_admin do
      after(:create) {|user| user.add_role(:super_admin)}
    end
  end
end