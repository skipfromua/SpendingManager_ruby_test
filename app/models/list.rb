class List < ApplicationRecord
  has_many :spendings, dependent: :destroy
  validates :title, :presence => true
  validates :category, :presence => true
  validates :amount, :presence => true
  validates :user_id, :presence => true
end
