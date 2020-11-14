class Spending < ApplicationRecord
  belongs_to :list
  validates :description, :presence => true
  validates :money, :presence => true
end
