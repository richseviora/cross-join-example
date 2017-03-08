require 'rails_helper'

RSpec.describe Bookshelf, type: :model do
  it 'Creates Successfully' do
    bs = Bookshelf.create
    expect(bs).to be_persisted
  end
end
