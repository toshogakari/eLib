# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

####################################################################
# Categories
####################################################################
categories = %w(プログラミング ネットワーク セキュリティ Webアプリケーション モバイルアプリケーション データベース データ解析 Apple)

categories.each do |category|
  Category.create(name: category)
end

####################################################################
# Books
####################################################################
books = ActiveSupport::JSON.decode(File.read('db/seeds/books.json'))
random = Random.new

books.each do |book|
  Book.create(
      isbn: book['isbn'],
      title: book['title'],
      description: book['description'],
    pc_image_url: book['pc_image_url'],
    mb_image_url: book['mb_image_url'],
    category_id: random.rand(1 ... categories.length).to_i
  )
end