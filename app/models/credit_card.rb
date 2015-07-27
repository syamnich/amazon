class CreditCard < ActiveRecord::Base
	validates :number, :cvv, :expiration_month, :expiration_year, 
						:first_name, :last_name, presence: true

	belongs_to :customer
	has_many :orders
end
