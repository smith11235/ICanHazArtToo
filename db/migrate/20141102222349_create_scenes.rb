class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :title
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
