json.array!(@instruktors) do |instruktor|
  json.extract! instruktor, :id, :name
  json.url instruktor_url(instruktor, format: :json)
end
