class Post < ApplicationRecord
    validates :title, presence: true
    validates :date, presence: true
    validates :image_url, presence: true
    validates :body, presence: true
    self.per_page = 3
    has_many :comments
    
    def first_created_comment
        comments.time_desc.first
    end
end
