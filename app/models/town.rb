class Town < ApplicationRecord

  belongs_to :region
  has_many :hotels
end
