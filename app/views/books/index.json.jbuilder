json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :title, :description, :pc_image_url, :mb_image_url, :category_id
  json.url book_url(book, format: :json)
end
