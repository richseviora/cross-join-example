class Bookshelf < ApplicationRecord
    has_many :book_associations, dependent: :destroy
    has_many :books, through: :book_associations

    # Retrieves bookshelves that have book first_id, and one of books in second_id
    # @param [Integer] first_id - The first ID to retrieve.
    # @param [Array<Integer>] second_ids - The second IDs to retrieve.
    def self.get_intersection(first_id, second_ids)
        self.find_by_sql(["SELECT * FROM bookshelves bs
        WHERE bs.id IN (SELECT DISTINCT b1.bookshelf_id
        FROM book_associations b1
            INNER JOIN book_associations b2 ON b1.bookshelf_id = b2.bookshelf_id
        WHERE b1.book_id = ? AND b2.book_id IN (?)
        )", first_id,second_ids])
    end
end

# SELECT DISTINCT b1.id FROM book_associations b1 INNER JOIN book_associations b2 ON b1.bookshelf_id = b2.bookshelf_id WHERE b1.book_id = 74 AND b2.book_id IN (75)