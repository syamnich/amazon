require 'rails_helper'

RSpec.describe Rating, type: :model do
  it { should validate_presence_of(:text_review) }
  it {expect(subject).to validate_inclusion_of(:rating_number).in_range(1..10)}

  it { expect(subject).to belong_to :customer }
  it { expect(subject).to belong_to :book }
end
