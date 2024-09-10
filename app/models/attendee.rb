class Attendee < ApplicationRecord
  belongs_to :conference
  belongs_to :event

  validates :conference, presence: true
  validates :full_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: { message: "has already been taken" }, email: true
end
