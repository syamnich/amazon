class Rating < ActiveRecord::Base
	validates :text_review, presence: true
	validates :rating_number, inclusion: { in: 1..10 }

	belongs_to :customer
	belongs_to :book
end
