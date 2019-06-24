class Song < ApplicationRecord
  belongs_to :type
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :playlists

  validates :name, :duration, :type_id, :youtube_url, :presence => true

  def describe
    self.name + " - " + self.artists.map(&:name).join(", ")
  end
end
