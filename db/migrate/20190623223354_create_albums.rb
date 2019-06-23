class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
