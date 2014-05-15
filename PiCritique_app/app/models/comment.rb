class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo
  validates :content, length: { maximum: 50 }
end