class PagesController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def new
    @page = Page.new
  end

  def create
    @page = Page.create(page_params)
    respond_with @page
  end

  def show
    @page = Page.find(params[:id])
  end

  private

  def page_params
    params.require(:page).permit(:title)
  end
end
