class Account < ApplicationRecord
    has_many :addresses
    validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
    validates :password, presence: true, uniqueness: true, length: { minimum: 6 }
    validates :email, presence: true
    validates :password, format: { with: /\A.*[0-9].*\z/, message: "must contain at least one number" }
end

