class UserMailer < ActionMailer::Base
  default from: "captain.planit.5000@gmail.com"

  def test_email(current_user)
  	mail(to: current_user.email, subject: "This is a test from Planit")
  end
end
