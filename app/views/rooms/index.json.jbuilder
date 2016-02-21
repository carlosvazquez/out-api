json.array!(@rooms) do |room|
  json.extract! room, :id, :title, :description, :type, :price
  json.url room_url(room, format: :json)
end
