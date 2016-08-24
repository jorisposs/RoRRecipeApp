json.extract! recipelist, :id, :name, :price, :ingredients, :created_at, :updated_at
json.url recipelist_url(recipelist, format: :json)