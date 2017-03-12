class Hotel < ApplicationRecord
  belongs_to :region
  belongs_to :town


  has_and_belongs_to_many :services

  mount_uploaders :images, ImageUploader
  serialize :images, JSON

end
