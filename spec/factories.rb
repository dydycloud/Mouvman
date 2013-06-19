require 'factory_girl'
FactoryGirl.define do
  factory :user do
    name 'Testy'
    email 'testy@test.com'
    password 'password'
  end
  factory :event do
  	name "Test Event"
  	description "Description"
  	user
  end
  factory :occasion do
    latitude 35.1234
    longitude -80.1234
    occurred_at DateTime.now
    note "Test Occasion"
    event
  end
end