class Band < ApplicationRecord
  belongs_to :owner, inverse_of: :band, class_name: 'User', foreign_key: :owner_id
  include ImageUploader::Attachment(:image)
  validates :name, presence: true
end
