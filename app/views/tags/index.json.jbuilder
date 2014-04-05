json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :description, :task
  json.url tag_url(tag, format: :json)
end
