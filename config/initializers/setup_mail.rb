ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "localhost:3000",
	:user_name => "captain.planit.5000@gmail.com",
	:password => "planit5000",
	:authentication => "plain",
	:enable_starttls_auto => true
}