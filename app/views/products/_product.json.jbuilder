json.extract! product, :id, :farmer_id, :name, :image, :description, :price, :picked_date, :active, :amount_available, :created_at, :updated_at
json.url product_url(product, format: :json)
