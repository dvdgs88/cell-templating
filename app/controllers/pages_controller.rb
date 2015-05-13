class PagesController < ApplicationController
  before_action :load_pages

  def index
  end

  def show
    @page = Page.find(params[:id])
  end

  private

  def load_pages
    @pages = Page.all
  end
end
