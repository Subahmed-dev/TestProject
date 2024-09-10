class AddUniqueIndexToSpeakersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :speakers, :email, unique: true
  end
end
