class Baby < ApplicationRecord
  has_many :records
  has_one_attached :image
end
