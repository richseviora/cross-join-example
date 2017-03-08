class Book < ApplicationRecord
    has_many :book_associations, dependent: :destroy
    has_many :bookshelves, through: :book_associations
end
