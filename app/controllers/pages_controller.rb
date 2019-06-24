class PagesController < ApplicationController
    before_action :set_album, only: [:show, :edit, :update, :destroy]
  
    # GET /albums
    # GET /albums.json
    def index
        @artists = Artist.limit(4)
    end

    def artist
        @artist = Artist.find(params[:id])
    end

    def artist_list
        @artists = Artist.all
    end

    def play
        if params[:type] == 'artist'
            @artist = Artist.find(params[:id])
            @songs = @artist.songs
        end
    end

    def search
        @artists = Artist.where('name like ?', '%' + params[:term] + '%' )
        @albums = Albums.where('title like ?', '%' + params[:term] + '%' )
        @songs = Songs.where('title like ?', '%' + params[:term] + '%' )
    end
end