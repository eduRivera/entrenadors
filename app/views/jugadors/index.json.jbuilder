json.array!(@jugadors) do |jugador|
  json.extract! jugador, :id, :nom, :cognoms, :foto, :data_neix, :categoria, :equips, :posicio, :cama_dominant, :entrenador_id
  json.url jugador_url(jugador, format: :json)
end
