class Band < ApplicationRecord
  belongs_to :user
  include ImageUploader::Attachment(:image)
  validates :name, presence: true
end
