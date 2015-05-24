json.array!(@structures) do |structure|
  json.extract! structure, :id, :left_title, :center_title, :center_description, :right_title
  json.url structure_url(structure, format: :json)
end
