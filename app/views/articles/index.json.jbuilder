json.array!(@articles) do |article|
  json.extract! article, :id, :name, :price, :image, :kind, :description, :sale, :stock, :url, :string_otro, :int_otro
  json.url article_url(article, format: :json)
end
