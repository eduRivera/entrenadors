json.array!(@partits_jugadors) do |partits_jugador|
  json.extract! partits_jugador, :id, :partit_id, :jugador_id, :titular, :no_convocat, :min_disp, :gols, :targetes_grogues, :targetes_vermelles, :partit_no_disp
  json.url partits_jugador_url(partits_jugador, format: :json)
end
