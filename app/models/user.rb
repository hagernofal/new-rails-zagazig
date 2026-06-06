class User < ApplicationRecord
    validates :name, presence: true
    validates :dob, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :email, presence: true, uniqueness: true

end
