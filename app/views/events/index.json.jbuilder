json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :start_at, :end_at, :all_day, :user_id, :is_private
  json.url event_url(event, format: :json)
end
