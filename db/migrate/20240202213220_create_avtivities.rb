class CreateAvtivities < ActiveRecord::Migration[7.1]
  def change
    create_table :avtivities do |t|
      t.string "notes"
      t.datetime "occured_at"
      t.integer "contact_id"
      t.integer "salesperson_id"
      t.timestamps
    end
  end
end
