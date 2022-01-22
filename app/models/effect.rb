class Effect < ApplicationRecord
  has_many :versions
  belongs_to :brand
end
