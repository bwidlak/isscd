json.array!(@admin_descriptions) do |admin_description|
  json.extract! admin_description, :id, :name, :text
  json.url admin_description_url(admin_description, format: :json)
end
