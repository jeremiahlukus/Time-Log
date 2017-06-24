 @user = User.create(email: "test@test.com", 
                     password: "asdfasdf", 
                     password_confirmation: "asdfasdf", 
                     first_name: "John",
                     last_name: "Doe",
                     phone: "9123246830")
 puts "One user has been created"


 AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin",
                  last_name: "User",
                  phone: "9123246830")

100.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} Bacon ipsum dolor amet pork chop sausage flank, tenderloin venison biltong frankfurter shoulder pig. Bacon chuck alcatra, sirloin pastrami pork belly flank. Burgdoggen swine capicola beef, jowl strip steak jerky ribeye drumstick chicken. Burgdoggen ribeye t-bone shankle spare ribs rump pig shank meatball salami pork chop swine porchetta prosciutto beef ribs. Jerky landjaeger alcatra drumstick, shankle bacon meatloaf turkey pastrami turducken salami pork chop tail chuck.", user_id: @user.id, overtime_request: 2.5)
end
puts "100 posts have have been created"

100.times do |audit_log| 
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end
puts "100 audit_logs have have been created"
