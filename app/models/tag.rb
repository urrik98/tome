class Tag < ApplicationRecord
  belongs_to :topic
  belongs_to :record
end
