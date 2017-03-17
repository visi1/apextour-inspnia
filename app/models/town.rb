class Town < ApplicationRecord

  belongs_to :region
  has_many :hotels
  validates :name, :region_id, presence: true

end
