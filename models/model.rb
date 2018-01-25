class CreateVotes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :votes do |t|
      
      t.string :name,                       :null => false
      t.string :flag
      t.timestamps
    end
    add_index :votes, :name
  end

  def self.down
    drop_table :votes
  end
end
