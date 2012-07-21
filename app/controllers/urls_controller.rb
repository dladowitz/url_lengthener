class UrlsController < ApplicationController
  def show
  end

  def new

  end

  def create
    @url = Url.new(:original => params[:url])
    @url.save
    @url.appendage = @url.id
    @url.save

    redirect_to urls_index_path
  end

  def redirect

    @url  = Url.find(params[:appendage])
    @url.increment_counter!

    redirect_to @url.original
  end

  def edit
  end

  def destroy
  end

  def index
    @url = Url.all

  end

  def update
  end
end

