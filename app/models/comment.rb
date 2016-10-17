class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  #order comments by created_at
  scope :time_desc, -> { order(created_at: :desc) }
end
