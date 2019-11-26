# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show; end
end
