class User < ApplicationRecord 
    validates :name,:email,:password,:age, presence: true
    validates :email,uniqueness: true
    validates :password, length: { in: 6..20 }
    validates :age, numericality: { only_integer: true }
    has_many :posts, dependent: :destroy

end
