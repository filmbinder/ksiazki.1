json.array!(@ibuks) do |ibuk|
  json.extract! ibuk, :id, :title, :price, :uid, :user_id
  json.url ibuk_url(ibuk, format: :json)
end
