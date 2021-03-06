class Chatroom < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :spotify_users, through: :messages
    validates :mood, presence: true, uniqueness: true, case_sensitive: false
end
