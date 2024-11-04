class User < ApplicationRecord
    has_many :events, foreign_key: :admin_id
    has_many :attendances
    has_many :attended_events, through: :attendances
end
