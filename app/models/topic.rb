class Topic < ApplicationRecord
  has_many :tags
  has_many :records, through: :tags
end
