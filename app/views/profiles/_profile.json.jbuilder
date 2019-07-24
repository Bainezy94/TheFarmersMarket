json.extract! profile, :id, :name, :avatar, :phone_number, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
