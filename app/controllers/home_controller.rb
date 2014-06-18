class HomeController < ApplicationController
  def index
  end

  def dashboard
    @pages = Page.all
  end
end
