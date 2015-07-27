require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quantity) }

  it { expect(subject).to belong_to :book }
  it { expect(subject).to belong_to :order }
end
