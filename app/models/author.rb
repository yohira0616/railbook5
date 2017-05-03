class Author < ApplicationRecord
  belongs_to :user
  belongs_to :user
  has_and_belongs_to_many :books
end
