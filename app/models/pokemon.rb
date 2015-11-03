class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, presence: true, uniqueness: true
	after_initialize :init

	def init
		self.health ||= 100
	end
end
