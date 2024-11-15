class Event < ApplicationRecord
  belongs_to :admin, class_name: 'User'
  has_many :attendances
  has_many :participants, through: :attendances
  has_one_attached :pictures

  # Validations pour les attributs
  validates :start, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 1000 }
  validates :location, presence: true

  # Validation personnalisée pour interdire les dates dans le passé
  validate :start_date_cannot_be_in_the_past
  validate :duration_multiple_of_five

  private

  def start_date_cannot_be_in_the_past
    if start.present? && start < Time.now
      errors.add(:start, "ne peut pas être dans le passé.")
    end
  end

  def duration_multiple_of_five
    if duration.present? && duration % 5 != 0
      errors.add(:duration, "doit être un multiple de 5")
    end
  end
end
