class Hotel < ApplicationRecord
  geocoded_by :address1, :latitude  => :latitude, :longitude => :longitude
  after_validation :geocode



  belongs_to :region
  belongs_to :town
  has_many :numbers

  has_and_belongs_to_many :services

  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  accepts_nested_attributes_for :numbers, reject_if: :all_blank, allow_destroy: true

  #validates
  validates :name, :region_id, :town_id, :transcription, presence: true

  def address1
    town = Town.find(town_id).name
    [town , address].compact.join(', ')

  end

end
