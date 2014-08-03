class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.string  :permalink
      t.integer :sequence
      t.boolean  :published, null: true

      t.timestamps
    end
  end
end
