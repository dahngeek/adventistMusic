class Category < ApplicationRecord
    has_and_belongs_to_many :songs
    validates :name, :presence => true

    has_one_attached :image
end
