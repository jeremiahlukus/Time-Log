 @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John",     last_name: "Doe")

 puts "One user has been created"


 AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin",     last_name: "User")

100.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale contect", user_id: @user.id)
end
puts "100 posts have have been created"
