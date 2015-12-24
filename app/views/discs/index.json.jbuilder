json.array!(@discs) do |disc|
  json.extract! disc, :id, :name, :year, :price, :state, :description
  json.url disc_url(disc, format: :json)
end
