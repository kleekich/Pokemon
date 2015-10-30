class Pokemon < ActiveRecord::Base
	belongs_to :trainer

	after_initialize :init

	def init
		self.health ||= 100
	end
end
