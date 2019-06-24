class Artist < ApplicationRecord
    has_and_belongs_to_many :songs
    has_and_belongs_to_many :albums

    # Imagenes
    has_one_attached :photo
    has_one_attached :cover

    # Validaciones
    validates :name, :biography, :presence => true
end
