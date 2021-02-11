class User < ApplicationRecord
    belongs_to :city, required: false
    has_many :gossips
    has_secure_password
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
    validates :email,
    presence: true,
    uniqueness: true

end
