class CreateConstituencies < ActiveRecord::Migration[5.1]
  def change
    create_table :constituencies do |t|
      t.string  :district_name, null: false
      t.integer :seat_count,    null: false

      t.timestamps
    end
  end
end
