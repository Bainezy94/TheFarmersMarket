json.extract! market, :id, :name, :location, :bio, :opening_hours, :created_at, :updated_at
json.url market_url(market, format: :json)
