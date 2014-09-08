json.array!(@qualifications) do |qualification|
  json.extract! qualification, :id, :vmilist_id, :instruktor_id, :reason
  json.url qualification_url(qualification, format: :json)
end
