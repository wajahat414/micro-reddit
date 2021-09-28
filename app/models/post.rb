class Post < ApplicationRecord
    validates :title,:link, presence: true
    validates :title,uniqueness: true
    belongs_to :user

end