json.array!(@partits) do |partit|
  json.extract! partit, :id, :jornada, :data_partit, :rival, :comentaris, :entrenador_id
  json.url partit_url(partit, format: :json)
end
