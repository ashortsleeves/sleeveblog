class Post < ApplicationRecord
    validates :title, presence: true
    validates :date, presence: true
    validates :image_url, presence: true
    validates :body, presence: true
    self.per_page = 3
end
