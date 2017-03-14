class Region < ApplicationRecord
  has_many :towns
  has_many :hotels
end
