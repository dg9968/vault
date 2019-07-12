json.array!(@taxpayers) do |taxpayer|
  json.extract! taxpayer, :id, :content, :user_id
  json.url taxpayer_url(taxpayer, format: :json)
end
