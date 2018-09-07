json.set! :specials do
  json.array! @specials do |special|
    json.extract! special, :id, :title
  end
end
