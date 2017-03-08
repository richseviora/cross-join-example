require 'rails_helper'

RSpec.describe BookAssociation, type: :model do
  it 'creates successfully' do
    b = Book.create
    bs = Bookshelf.create
    ba = BookAssociation.create(book: b, bookshelf: bs)
    expect(ba).to be_persisted
  end
end
