require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }

  it { expect(subject).to have_many :books }
end
