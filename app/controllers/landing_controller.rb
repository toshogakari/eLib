class LandingController < ApplicationController
  layout 'landing'

  # GET /
  def index
    @books = Book.limit(60)
    @categories = Category.all
    @user = { name: 'test' }
  end

end