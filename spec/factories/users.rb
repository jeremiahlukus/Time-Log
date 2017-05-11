FactoryGirl.define do

  sequence :email do |n|
    "test#{n}@test.com"
  end 
  
  factory :user do
  first_name 'John'
  last_name 'Doe'
  email {generate :email}
  password 'heyhey'
  password_confirmation "heyhey"
  end

  factory :admin_user, class: "AdminUser" do
  first_name 'Admin'
  last_name 'User' 
  email {generate :email}
  password 'heyhey'
  password_confirmation "heyhey"
   end

end
