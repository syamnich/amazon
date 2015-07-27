require 'rails_helper'

RSpec.describe Book, type: :model do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:book_in_stock) }

  it { expect(subject).to belong_to :author }
  it { expect(subject).to belong_to :category }
  it { expect(subject).to have_many :ratings }

end
