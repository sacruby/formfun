json.array!(@phones) do |phone|
  json.extract! phone, :id, :number, :person_id
  json.url phone_url(phone, format: :json)
end
