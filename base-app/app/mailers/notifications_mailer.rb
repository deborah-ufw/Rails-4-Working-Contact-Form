class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@yourEmail.com"
  default :to => "you@yourEmail.com"

  def new_message(message)
    @message = message
    mail(:from => @message.email, :subject => @message.message_subject)
    end
end
