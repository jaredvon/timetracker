FactoryGirl.define do 
   factory :user do
       name 'Ryan'
       password 'password'
       sequence(:email) { |n| "hello#{n}@gmail.com"}
   end
end