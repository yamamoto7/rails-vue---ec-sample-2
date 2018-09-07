json.set! :items do
  json.array! @items do |item|
    json.extract! item, :id, :title, :body
  end
end
