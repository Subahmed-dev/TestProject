class Speaker < ApplicationRecord
  belongs_to :conference

  validates :conference, presence: true
  validates :full_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: { scope: :conference_id, message: "has already been taken" }, email: true
end
