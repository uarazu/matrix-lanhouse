json.array!(@services) do |service|
  json.extract! service, :id, :title_1, :description_1, :title_2, :description_2, :title_3, :description_3, :title_4, :description_4
  json.url service_url(service, format: :json)
end
