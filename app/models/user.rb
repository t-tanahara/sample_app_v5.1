class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email,
        presence: true,
        format: { with: VALID_EMAIL_REGEX },
        length: { maximum: 255 },
        uniqueness: { case_sensitive: false }
end
