json.extract! product, :id, :farmers_profile_id, :name, :image, :description, :price, :picked_date, :active, :amount_available, :created_at, :updated_at, :unit
json.url product_url(product, format: :json)
