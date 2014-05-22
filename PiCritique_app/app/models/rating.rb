class Rating < ActiveRecord::Base 
	belongs_to :photo
	# Need to come back and dry this up.
	validates_numericality_of :setting, :only_integer => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."
  validates_numericality_of :hotness, :only_integer => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."
  validates_numericality_of :originality, :only_integer => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."
  validates_numericality_of :style, :only_integer => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."
  validates_numericality_of :attitude, :only_integer => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."

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

