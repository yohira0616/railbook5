class User < ApplicationRecord
  validates :agreement, acceptance: true
  has_one :author
  has_many :reviews
  has_many :books, through: :reviews
end
