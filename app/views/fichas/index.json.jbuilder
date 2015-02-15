json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :peso_inicial, :altura, :idm, :peso_ideal, :peso_objetivo, :talla_inicial, :talla_objetivo, :ejercicio, :user_id
  json.url ficha_url(ficha, format: :json)
end
