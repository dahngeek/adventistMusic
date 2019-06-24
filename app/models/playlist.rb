class Playlist < ApplicationRecord
    has_and_belongs_to_many :songs
    validates :title, :presence => true

    has_one_attached :image
end
