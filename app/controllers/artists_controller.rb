# frozen_string_literal: true

class ArtistsController < ApplicationController

  def index
    #@artists = Artist.all.paginate(page: params[:page], per_page: 1)
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
