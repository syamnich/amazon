require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_uniqueness_of(:email) }

  it { expect(subject).to have_many :ratings }
  it { expect(subject).to have_many :orders }
  it { expect(subject).to have_many :credit_cards }
end
