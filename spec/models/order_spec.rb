require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_presence_of(:total_price) }
  it { should validate_presence_of(:completed_date) }
  it { should validate_presence_of(:state) }

  it { expect(subject).to belong_to :customer }
  it { expect(subject).to belong_to :credit_card }
  it { expect(subject).to have_many :order_items }
  it { expect(subject).to have_many :addresses }
end
