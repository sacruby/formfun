json.array!(@location_types) do |location_type|
  json.extract! location_type, :id, :name
  json.url location_type_url(location_type, format: :json)
end
