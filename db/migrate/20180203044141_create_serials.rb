class CreateSerials < ActiveRecord::Migration[5.1]
  def change
    create_table :serials do |t|
      t.string :number

      t.timestamps
    end
  end
end
