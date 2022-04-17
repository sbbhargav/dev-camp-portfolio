class Portfolio < ApplicationRecord
	validates_presence_of :title,:main_image,:tumb_image
	def self.angular
		where(subtitle: "Angular ")
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }
end
