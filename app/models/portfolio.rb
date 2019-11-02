class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

	after_initialize :set_defaults

	#在create之後，系統會自動產生main與thumb的預設
	def set_defaults
		self.main_image ||= "https://via.placeholder.com/600X400.png?"
		self.thumb_image ||= "https://via.placeholder.com/350X200.png?"
	end
end
