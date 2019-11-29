# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def allproducts
    @albums = Album.where(['name LIKE ?', "%#{params[:search]}%"])
  end

  def show
    @album = Album.find(params[:id])
  end
end
