json.set! :item do
  json.extract! @item, :title, :body
  json.status @status
end
