class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of  :title, :percent_utilized

	#after_initialize :set_defaults

	#在create之後，系統會自動產生main與thumb的預設
	#def set_defaults
	#	self.badge ||= Placeholder.image_generator(height: '250 ',width: '250')
	#end
end
 