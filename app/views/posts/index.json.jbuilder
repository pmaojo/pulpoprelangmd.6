json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :body, :link, :imagen, :category_id, :user_id, :published, :category_id, :user_id
  json.url post_url(post, format: :json)
end
