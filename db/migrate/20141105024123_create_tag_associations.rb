class CreateTagAssociations < ActiveRecord::Migration
  def change
    create_table :tag_associations do |t|
      t.integer :gif_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
