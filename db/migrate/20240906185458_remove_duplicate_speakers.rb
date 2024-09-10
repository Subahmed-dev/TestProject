class RemoveDuplicateSpeakers < ActiveRecord::Migration[5.2]
  def change
    Speaker.transaction do
      unique_speaker_ids = Speaker.select('MIN(id) as id').group(:email).pluck(:id)
      
      Speaker.where.not(id: unique_speaker_ids).delete_all
    end
  end
end