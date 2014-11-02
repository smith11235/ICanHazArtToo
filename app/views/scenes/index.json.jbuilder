json.array!(@scenes) do |scene|
  json.extract! scene, :id, :title, :description, :image
  json.url scene_url(scene, format: :json)
end
