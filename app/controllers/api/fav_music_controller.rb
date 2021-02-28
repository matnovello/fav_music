class Api::FavMusicController < ApplicationController
  def index
    @songs = Songs.all
    render "index.json.jb"
  end
end
