json.extract! message, :id, :content, :sent_date, :user_id, :channel_id, :created_at, :updated_at
json.url message_url(message, format: :json)
