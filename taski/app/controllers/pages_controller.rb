class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My cool page!"
  end

  def home
  end
end
