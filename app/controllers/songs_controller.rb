# frozen_string_literal: true

class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show; end
end
