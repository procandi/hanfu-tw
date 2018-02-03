class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :email
      t.string :flag

      t.timestamps
    end
  end
end
