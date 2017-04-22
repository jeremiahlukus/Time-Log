100.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale contect")
end
puts "100 posts have have been created"
