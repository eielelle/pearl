class Event < ApplicationRecord
  attribute :limit, :integer, default: 50
  attribute :price, :decimal, default: 0
  attribute :isPublished, :boolean, default: false
  attribute :isPublic, :boolean, default: false

  # Presence validations (null: false)
  validates :title, :location, :limit, :expiry, :price, presence: true

  # Length validations (limit)
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 200 }, allow_blank: true
  validates :location, length: { maximum: 200 }

  # Numericality validations
  validates :limit, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  # Boolean fields (not strictly necessary to validate, but can be done if desired)
  validates :isPublished, :isPublic, inclusion: { in: [true, false] }

  # Custom validation example (optional)
  validate :expiry_cannot_be_in_the_past

  private

  def expiry_cannot_be_in_the_past
    return if expiry.blank?
    if expiry < Time.current
      errors.add(:expiry, "can't be in the past")
    end
  end
end
