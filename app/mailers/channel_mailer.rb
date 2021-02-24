class ChannelMailer < ApplicationMailer

  def send_weekly_emails(email, count_by_week, total_messages, message)
    @count_by_week = count_by_week
    @total_messages = total_messages
    @message = message
    mail(to: email,
         subject: "Channels weekly emails")
  end
end
