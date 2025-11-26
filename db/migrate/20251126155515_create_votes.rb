class CreateVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :votes do |t|
      t.integer :question_id
      t.integer :voter_id
      t.integer :selected_id

      t.timestamps
    end

    add_index :votes, [:question_id, :voter_id], unique: true
  end
end
