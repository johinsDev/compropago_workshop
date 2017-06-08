json.extract! product, :id, :title, :description, :princing, :created_at, :updated_at
json.url product_url(product, format: :json)
