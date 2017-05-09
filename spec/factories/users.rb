FactoryGirl.define do
  factory :user do
  first_name 'John'
  last_name 'Doe'
  email "test@test.com"
  password 'heyhey'
  password_confirmation "heyhey"
  end

  factory :admin_user, class: "AdminUser" do
  first_name 'Admin'
  last_name 'User'
  email "admin@user.com"
  password 'heyhey'
  password_confirmation "heyhey"
   end

end
