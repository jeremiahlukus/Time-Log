namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they have overtime or not"
  task sms: :environment do

    if Time.now.monday?
      employees = Employee.all

      notification_message = "Please log into the overtime management dashboard to request overtime to confirm your hours for last week: http://time-log-overtime.herokuapp.com"
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end

    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests" 
  task manager_email: :environment do
    puts "Im the manager email"
    # 1. Iterate over the list of pending requests 
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users/managers
    # 4. Send the email to each admin

    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
