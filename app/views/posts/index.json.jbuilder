json.array!(@posts) do |post|
  json.extract! post, :id, :title, :slug, :content
  json.url post_url(post, format: :json)
end
