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
end