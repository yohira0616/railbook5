class User < ApplicationRecord
  validates :agreement, acceptance: true
end
