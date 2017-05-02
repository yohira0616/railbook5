class Book < ApplicationRecord
  scope :gihyo, -> {where(publish: '技術評論社')}
  scope :newer, -> {order(published: :desc)}
  scope :top10, -> {newer.limit(10)}
end
