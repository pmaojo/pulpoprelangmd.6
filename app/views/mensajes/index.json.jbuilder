json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :asunto, :consulta, :user_id, :user_id, :category_id
  json.url mensaje_url(mensaje, format: :json)
end
