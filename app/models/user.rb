class User < ApplicationRecord
    has_many :messages, class_name: 'Message', foreign_key: 'recipient_id'
    has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'

    has_secure_password
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, length: { minimum: 6 }, :if => :password

    has_many :luggages
    has_many :trips
    has_many :places, through: :trips
    has_many :hotels, through: :trips
    has_many :transportations, through: :trips
end
