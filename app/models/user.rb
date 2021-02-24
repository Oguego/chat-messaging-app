class User < ApplicationRecord
  has_many :user_channels
  has_many :channels, through: :user_channels

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def join_channel(channel)
    current_channel = user_channels.find_by_channel_id(channel.id)
    if !current_channel
      user_channels.create(channel_id: channel.id)
    end
  end

end
