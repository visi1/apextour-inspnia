class Hotel < ApplicationRecord
  belongs_to :region
  belongs_to :town
end
