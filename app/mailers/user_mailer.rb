class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com", :subject => "Confirm your admin account"

  def confirmation_instructions(record)
    @resource = record
    mail(:to => record.email)
  end
end