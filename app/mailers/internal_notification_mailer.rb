class InternalNotificationMailer < ApplicationMailer
  default to: 'dhar.saurav@gmail.com'

  def test_email
    subject = "This is a Test Email"
    mail to: "dhar.saurav@gmail.com", subject: subject
  end

end