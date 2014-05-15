class Photo < ActiveRecord::Base
  has_attached_file :content, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :content, :content_type => /\Aimage\/.*\Z/

  # validates_attachment_content_type :content, :content_type => /\Aimage\/.*\Z/

  belongs_to :album 
  has_many :comments, through: :users
  # validates :name, presence: true
end