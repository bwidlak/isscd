class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.string  :address
      t.float   :latitude
      t.float   :longitude
      t.string  :permalink
      t.integer :sequence
      t.integer :project_id
      t.boolean :published, null: true

      t.timestamps
    end
  end
end
