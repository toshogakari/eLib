json.set! :total, @books.total_count
json.set! :current_page, @books.current_page
json.set! :num_pages, @books.num_pages
json.set! :result do
  json.array!(@books) do |book|
    json.id book.id
    json.isbn book.isbn
    json.title book.title
    json.pc_image_url book.pc_image_url
    json.mb_image_url book.mb_image_url
    json.url book_url(book)
  end
end