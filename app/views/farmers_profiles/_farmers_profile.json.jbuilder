json.extract! farmers_profile, :id, :profile_id, :images, :bio, :market_id, :stall_name, :created_at, :updated_at
json.url farmers_profile_url(farmers_profile, format: :json)
