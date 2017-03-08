class BookAssociation < ApplicationRecord
    belongs_to :book
    belongs_to :bookshelf
end
