namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they have overtime or not"
  task sms: :environment do

    if Time.now.monday?

    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests" 
  task manager_email: :environment do
    puts "Im the manager email"
    # 1. Iterate over the list of pending requests 
    # 2. check to see if there are any requests
    # 3. iterate over the list of admin users/managers
    # 4. send the email to each admin

    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
