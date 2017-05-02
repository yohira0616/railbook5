class User < ApplicationRecord
  validates :agreement, acceptance: true
  has_one :author
end
