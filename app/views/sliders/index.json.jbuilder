json.array!(@sliders) do |slider|
  json.extract! slider, :id, :description_1, :description_2, :description_3, :description_4, :description_5
  json.url slider_url(slider, format: :json)
end
