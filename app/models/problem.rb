class Problem < ApplicationRecord
  belongs_to :put
  validates :content, presence: true
end
