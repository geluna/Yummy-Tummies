json.array!(@franchises) do |franchise|
  json.extract! franchise, :id, :name, :address
  json.url franchise_url(franchise, format: :json)
end
