class BookCase < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  has_one :note
end
