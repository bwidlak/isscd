class Admin::Project < Project

  geocoded_by :address
  after_validation :geocode

  def update_assets(arr, type)
    current_assets_ids = current_assets(type).map(&:asset_id)
    add_assets(arr - current_assets_ids, type)
    assets_to_delete = self.assets.where(asset_type: type).where.not(asset_id: arr)
    assets_to_delete.destroy_all
  end

  def current_assets(type)
    self.assets.where(asset_type: type)
  end

  def add_assets(arr, type)
    arr.each do |id|
      self.assets.create(project_id: self, asset_id: id, asset_type: type)
    end
  end

end
