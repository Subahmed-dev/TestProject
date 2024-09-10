class RemoveDuplicateAttendees < ActiveRecord::Migration[5.2]
  def change
    Attendee.transaction do
      unique_attendee_ids = Attendee.select('MIN(id) as id').group(:email).pluck(:id)
      
      Attendee.where.not(id: unique_attendee_ids).delete_all
    end
  end
end
