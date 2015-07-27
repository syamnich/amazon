class Customer < ActiveRecord::Base
	validates :email, :password, :first_name, :last_name, presence: true
	validates :email, uniqueness: true

	has_many :ratings
	has_many :orders
	has_many :credit_cards
end
