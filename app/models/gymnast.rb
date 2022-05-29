class Gymnast < ApplicationRecord
  belongs_to :team
  has_many :score
end
