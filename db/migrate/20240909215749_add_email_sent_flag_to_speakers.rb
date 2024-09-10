class AddEmailSentFlagToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :email_sent, :boolean, default: false
  end
end
