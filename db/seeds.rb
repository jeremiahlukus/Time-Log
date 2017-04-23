 @user = User.create(email: "test@test.com", password: "heyhey", password_confirmation: "heyhey", first_name: "John",     last_name: "Doe")

 puts "One user has been created"

100.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale contect", user_id: @user.id)
end
puts "100 posts have have been created"
