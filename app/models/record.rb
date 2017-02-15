class Record < ApplicationRecord
  has_many :tags
  has_many :topics, through: :tags
  belongs_to :user
  before_validation :set_times_viewed, on: :create
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  def set_times_viewed
    self.times_viewed = 0
  end
end
