class Portfolio < ApplicationRecord
	has_many :technologies 
	accepts_nested_attributes_for :technologies, 
	                              reject_if: lambda { |attrs| attrs['name'].blank? }

	validates_presence_of :title, :body

	paginates_per 9

	mount_uploader :thumb_image, PorfolioUploader
	mount_uploader :main_image, PorfolioUploader

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

	#after_initialize :set_defaults

	#在create之後，系統會自動產生main與thumb的預設

end
