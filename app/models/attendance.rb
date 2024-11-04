class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  after_create :send_registration_confirmation

  def send_registration_confirmation
    UserMailer.email_registration_confirmation(user, event).deliver_now
  end
end
