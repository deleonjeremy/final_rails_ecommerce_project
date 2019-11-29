# frozen_string_literal: true

class SongsController < ApplicationController
  before_action :initialize_session
  before_action :load_cart
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  private

  def initialize_session
    session[:cart] ||= [] # Empty array to store products
  end

  def load_cart
    @cart = Album.find(session[:cart])
  end
end
