json.array!(@rooms) do |room|
  json.extract! room, :id, :title, :description, :inmueble, :price
  json.url room_url(room, format: :json)
end
