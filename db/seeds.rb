 @user = User.create(email: "test@test.com", 
                     password: "asdfasdf", 
                     password_confirmation: "asdfasdf", 
                     first_name: "John",
                     last_name: "Doe",
                     phone: "912-324-6830")
 puts "One user has been created"


 AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin",
                  last_name: "User",
                  phone: "912-324-6830")

100.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale contect", user_id: @user.id, overtime_request: 2.5)
end
puts "100 posts have have been created"
