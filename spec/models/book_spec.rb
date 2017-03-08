require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'creates successfully' do
    b = described_class.create
    expect(b).to be_persisted
  end
end
