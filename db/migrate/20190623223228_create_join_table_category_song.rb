class CreateJoinTableCategorySong < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :songs do |t|
      # t.index [:category_id, :song_id]
      # t.index [:song_id, :category_id]
    end
  end
end
