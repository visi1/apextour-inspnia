class Number < ApplicationRecord

  validates :name, :date_start, :date_finish, :one_person, :two_person, presence: true
end
