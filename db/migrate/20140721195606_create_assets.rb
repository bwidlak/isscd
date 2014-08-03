class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer   :project_id
      t.integer   :asset_id
      t.string    :asset_type

      t.timestamps
    end
  end
end
