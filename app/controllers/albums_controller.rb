# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def allproducts
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end
end
