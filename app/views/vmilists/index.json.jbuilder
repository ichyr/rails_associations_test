json.array!(@vmilists) do |vmilist|
  json.extract! vmilist, :id, :name
  json.url vmilist_url(vmilist, format: :json)
end
