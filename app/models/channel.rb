class Channel < ApplicationRecord
  has_many :messages
  has_many :user_channels
  has_many :users, through: :user_channels

  def build_message
    messages.new
  end

  def self.send_weekly_emails
    Channel.includes(:users, :messages).each do |channel|

      start_date = Time.now.beginning_of_week
      end_date = Time.now

      channel.users.each do |user|
        count_by_week = channel.messages.where(created_at: start_date..end_date).size
        message = channel.messages.where(user_id: user.id).try(:last)
        total_messages = 0

        if message
          last_message_date = message.created_at
          total_messages = channel.messages.where(created_at: last_message_date..end_date).size
        end

        ChannelMailer.send_weekly_emails(user.email, count_by_week, total_messages, message).deliver_later
      end
    end


  end


end
