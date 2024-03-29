class Album < ApplicationRecord
    has_and_belongs_to_many :artists
    has_and_belongs_to_many :songs

    validates :title, :year, :description, :presence => true
    validates :year, :numericality => { :only_integer => true }

    has_one_attached :image

    def get_image
        if self.songs.count >= 1
            self.songs[0].image
        else
            'https://via.placeholder.com/150C/'
        end
        
    end
end
