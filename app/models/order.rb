class Order < ActiveRecord::Base
	validates :total_price, :completed_date, :state, presence: true

	belongs_to :customer
	belongs_to :credit_card
	has_many :order_items
	has_many :addresses
end
