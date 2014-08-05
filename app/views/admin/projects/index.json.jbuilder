json.array!(@admin_projects) do |admin_project|
  json.extract! admin_project, :id, :title, :permalink, :sequence, :published
  json.url admin_project_url(admin_project, format: :json)
end
