class Memo < ApplicationRecord
  belongs_to :memoable, polymorphic: true
end
