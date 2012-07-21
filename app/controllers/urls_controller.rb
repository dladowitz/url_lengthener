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
    # logger.info("XXXXX #{@url}")
    @url.counter += 1
    @url.save

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

