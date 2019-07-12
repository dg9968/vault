json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :name, :phone, :email, :message
  json.url prospect_url(prospect, format: :json)
end
