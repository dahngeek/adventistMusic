class CreateJoinTableArtistSong < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artists, :songs do |t|
      # t.index [:artist_id, :song_id]
      # t.index [:song_id, :artist_id]
    end
  end
end
