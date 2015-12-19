class LandingController < ApplicationController
  layout 'landing'

  # GET /
  def index
    @books = Book.limit(50)
    @categories = Category.all
  end

end