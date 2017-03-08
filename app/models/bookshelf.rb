class Bookshelf < ApplicationRecord
    has_many :book_associations, dependent: :destroy
    has_many :books, through: :book_associations
end
