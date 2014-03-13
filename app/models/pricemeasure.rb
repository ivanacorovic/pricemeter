class Pricemeasure < ActiveRecord::Base
	belongs_to :product
	belongs_to :supermarket
	validates :product, presence: true
	validates :supermarket, presence: true
	scope :descending, -> {order('measured_at DESC')}
end
