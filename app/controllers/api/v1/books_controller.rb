class Api::V1::BooksController < Api::V1::BaseController

  #POST api/books/search/:page
  def search
    page = params[:page].blank? ? 1 : params[:page]
    @books = Book.includes(:tags)
     .select(:id, :isbn, :title, :pc_image_url, :mb_image_url, :category_id)
     .search(params, [
         [:title, 'LIKE'],
         [:category_id],
         [:tag_id]
     ]).page(page).per(100)
  end

end