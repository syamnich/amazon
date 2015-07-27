require 'rails_helper'

RSpec.describe CreditCard, type: :model do
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:cvv) }
  it { should validate_presence_of(:expiration_month) }
  it { should validate_presence_of(:expiration_year) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it { expect(subject).to belong_to :customer }
  it { expect(subject).to have_many :orders }
end
