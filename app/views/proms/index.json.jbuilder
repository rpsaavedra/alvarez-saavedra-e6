json.array!(@proms) do |prom|
  json.extract! prom, :id, :name, :price, :image, :description, :stock, :prod_1, :prod_2, :prod_3, :prod_4, :cant_1, :cant_2, :cant_3, :cant_4, :date_start, :date_end, :valido, :url, :string_otro, :int_otro
  json.url prom_url(prom, format: :json)
end
