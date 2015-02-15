json.array!(@actualizacions) do |actualizacion|
  json.extract! actualizacion, :id, :user_id, :peso, :dieta, :cardio, :talla, :muscular, :user_id
  json.url actualizacion_url(actualizacion, format: :json)
end
