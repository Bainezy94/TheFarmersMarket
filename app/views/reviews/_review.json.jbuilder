json.extract! review, :id, :profile_id, :farmer_id, :rating, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
