class AdminMailer < ActionMailer::Base
  default :from => "me@myself.com", :subject => "Confirm your admin account"

  def confirmation_instructions(record)
    @resource = record
    mail(:to => record.email)
  end
end