class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
