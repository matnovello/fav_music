class Api::FavMusicController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @song = Song.new({
      title: params[:title], album: params[:album], artist: params[:artist], year: params[:year],
    })
    @song.save
    render "show.json.jb"
  end

  def patch
    @song = Song.find(params[:id])
    @song.title = params[:title] || @song.title
    @song.album = params[:album] || @song.album
    @song.artist = params[:artist] || @song.artist
    @song.year = params[:year] || @song.year
    @song.save
    render "show.json.jb"
    p "song titled: #{@song.title} of ID number #{@song.id} was updated"
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    render json: { message: "#{@song.title} by #{@song.artist} was deleted" }
  end
end
