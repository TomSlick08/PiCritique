class Rating < ActiveRecord::Base 
	belongs_to :photo
	validates :setting, :numericality => {:only_integer => true}
	# need to validate the numericality of the rating (to be less than or equal
	#  to 10 and greater than 0)
	
	def overall_rating
		total_score = 0
		total_score += self.setting 
		total_score += self.hotness
		total_score += self.originality
		total_score += self.style
		total_score += self.attitude
		return total_score / 5
	end

end

