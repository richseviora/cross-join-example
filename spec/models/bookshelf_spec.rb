require 'rails_helper'

RSpec.describe Bookshelf, type: :model do
  it 'Creates Successfully' do
    bs = Bookshelf.create
    expect(bs).to be_persisted
  end

  describe '.get_intersection' do
    it 'returns intersection of books' do
      # Arrange
      book1 = Book.create
      book2 = Book.create
      bookshelf1 = Bookshelf.create
      ba1 = BookAssociation.create(book: book1, bookshelf: bookshelf1)
      ba2 = BookAssociation.create(book: book2, bookshelf: bookshelf1)
      # Act
      result = described_class.get_intersection(book1.id, [book2.id])
      # Assert
      
      expect(result).not_to be_empty
      expect(result.first).to eq bookshelf1
    end
  end  
end
