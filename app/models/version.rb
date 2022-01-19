class Version < ApplicationRecord
  belongs_to :effect
  has_many :clones
end
