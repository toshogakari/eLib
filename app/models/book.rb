class Book < ActiveRecord::Base
  belongs_to :category
  has_many :book_cases
  has_many :users, through: :book_cases
  has_many :tag_has_books
  has_many :tags, through: :tag_has_books
end
