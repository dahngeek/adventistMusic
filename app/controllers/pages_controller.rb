class PagesController < ApplicationController
    before_action :set_album, only: [:show, :edit, :update, :destroy]
  
    # GET /albums
    # GET /albums.json
    def index
        @artists = Artist.limit(4)
        @albums = Album.limit(4)
    end

    def artist
        @artist = Artist.find(params[:id])
    end

    def album
        @album = Album.find(params[:id])
    end

    def artist_list
        @artists = Artist.all
    end

    def albums_list
        @albums = Album.all
    end

    def play
        if params[:type] == 'artist'
            @artist = Artist.find(params[:id])
            @songs = @artist.songs
        elsif params[:type] == 'song'
            @song = Song.find(params[:id])
            @songs = [@song]
            @song.artists.each do |artista|
                @canciones = artista.songs.where('id != ?', @song.id)
                @songs = @songs.concat @canciones
            end
            @songs
        elsif params[:type] == 'album'
            @album = Album.find(params[:id])
            @songs = @album.songs
        end
    end

    def search
        @term = params[:term]
        @artists = Artist.where('name ILIKE :first_search OR name like :second_search OR name like :third_search', first_search: "%"+ params[:term] +"%", second_search: "%"+ params[:term], third_search: params[:term] +"%")
        @albums = Album.where('title ILIKE ?', '%' + params[:term] + '%' )
        @songs = Song.where('title ILIKE ?', '%' + params[:term] + '%' )
    end
end