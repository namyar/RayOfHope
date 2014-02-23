json.array!(@children) do |child|
  json.extract! child, :id, :name, :gender, :age, :description
  json.url child_url(child, format: :json)
end
