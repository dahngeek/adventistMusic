class AddYoutubeUrlToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :youtube_url, :string
  end
end
