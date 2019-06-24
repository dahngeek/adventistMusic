class Album < ApplicationRecord
    has_and_belongs_to_many :artists
    has_and_belongs_to_many :songs

    validates :title, :year, :description, :presence => true
    validates :year, :numericality => { :only_integer => true }

    has_one_attached :image
end
