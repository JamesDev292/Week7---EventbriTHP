class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    has_many :events, foreign_key: :admin_id
    has_many :attendances
    has_many :attended_events, through: :attendances


    after_create :welcome_send

    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end
end
