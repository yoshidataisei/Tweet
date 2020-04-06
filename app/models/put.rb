class Put < ApplicationRecord
  belongs_to :user, optional: true
  
  has_many :problems
  
  validates :username, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 10 }
  validates :body, presence: true
end
