class Comment < ApplicationRecord
  belongs_to :article
  mount_uploader :picture, PictureUploader 
  validates :body, presence: true 
end
