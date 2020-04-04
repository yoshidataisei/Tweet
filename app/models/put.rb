class Put < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :title, presence: true, length: { maximum: 10 }
  validates :body, presence: true, length: { maximum: 10 }
end
