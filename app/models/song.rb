class Song < ApplicationRecord
  belongs_to :type
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :playlists

end
