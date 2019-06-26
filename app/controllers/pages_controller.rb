class PagesController < ApplicationController

  def index
    render "pages/index"
  end

  def about
    render "pages/about"
  end

end
