class Photo < ActiveRecord::Base
  has_attached_file :content, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :content, :content_type => /\Aimage\/.*\Z/

  # validates_attachment_content_type :content, :content_type => /\Aimage\/.*\Z/
  has_many :ratings
  belongs_to :album 
  has_many :comments
  # validates :name, presence: true

  def average_rating
  	total_score = 0
  	num_of_ratings = self.ratings.count
  	self.ratings.each do |rating|
  		total_score += rating.overall_rating
  	end
  	if num_of_ratings > 0
  		return total_score / num_of_ratings
  	else
  		return 0
  	end
  end

end