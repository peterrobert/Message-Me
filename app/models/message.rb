class Message < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    validates :message, presence: true
end
