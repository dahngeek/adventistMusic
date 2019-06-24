class Song < ApplicationRecord
  belongs_to :type
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :playlists
  has_and_belongs_to_many :albums

  validates :name, :duration, :type_id, :youtube_url, :presence => true

  def describe
    self.name + " - " + self.artists.map(&:name).join(", ")
  end

  def artists_list
    self.artists.map(&:name).join(", ")
  end

  def get_youtubeid
    self.youtube_url.match(/(?:youtu\.be\/|youtube\.com(?:\/embed\/|\/v\/|\/watch\?v=|\/user\/\S+|\/ytscreeningroom\?v=|\/sandalsResorts#\w\/\w\/.*\/))([^\/&]{10,12})/)[1]
  end

  def image
    id = self.get_youtubeid()
    'https://img.youtube.com/vi/'+ id +'/hqdefault.jpg'
  end
end
