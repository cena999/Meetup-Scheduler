json.extract! meetup, :id, :name, :description, :password, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
