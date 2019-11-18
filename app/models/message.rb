class Message < ApplicationRecord
    belongs_to :recipient, foreign_key: 'recipient_id', class_name: 'User'
    belongs_to :sender, foreign_key: 'sender_id', class_name: 'User'
    scope :unread, -> { where read: false }
end
