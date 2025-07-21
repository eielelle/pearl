json.extract! event, :id, :title, :description, :location, :limit, :expiry, :price, :isPublished, :isPublic, :attendees, :attending, :not_attending, :created_at, :updated_at
json.url event_url(event, format: :json)
