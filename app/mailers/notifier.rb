class Notifier < ActionMailer::Base
 
  def support_notification(sender)
    @sender = sender
    mail(:to => "administrator[at]yourdomain.com",
         :from => sender.email,
         :subject => "New #{sender.support_type}")
  end
end