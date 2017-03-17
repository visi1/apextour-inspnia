class Region < ApplicationRecord
  has_many :towns
  has_many :hotels
  validates :name, presence: true
  validates :name, uniqueness: true

end
