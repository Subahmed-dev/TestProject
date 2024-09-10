class AddUniqueIndexToAttendeesEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :attendees, :email, unique: true
  end
end
