class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :name
      t.text :text

      t.timestamps
    end
  end
end
