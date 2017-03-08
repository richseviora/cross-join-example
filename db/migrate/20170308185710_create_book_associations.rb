class CreateBookAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :book_associations do |t|
      t.references :book
      t.references :bookshelf
      t.timestamps
    end
  end
end
