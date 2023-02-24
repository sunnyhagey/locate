class User < ApplicationRecord
    has_many :user_locations
    has_many :locations, through: :user_locations

    has_secure_password

    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

    PASSWORD_FORMAT = /\A
    (?=.{4,})          # Must contain 4 or more characters
    (?=.*\d)           # Must contain a digit
    (?=.*[a-z])        # Must contain a lower case character
    (?=.*[A-Z])        # Must contain an upper case character
    (?=.*[[:^alnum:]]) # Must contain a symbol
/x

    validates :password, presence: true, format: PASSWORD_FORMAT
end
