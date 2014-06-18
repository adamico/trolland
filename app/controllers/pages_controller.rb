class PagesController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    2.times do
      @page.sides.build
    end
  end

  def create
    @page = Page.create(page_params)
    respond_with @page
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update(page_params)
    respond_with @page
  end

  private

  def page_params
    params.require(:page).permit(:side, :other_side, :description)
  end
end
