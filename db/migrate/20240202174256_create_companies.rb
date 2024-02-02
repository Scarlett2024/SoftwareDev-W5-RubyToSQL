class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name"   #create a column called names, as text
      t.string "city"
      t.string "state"
      t.string "URL"
      t.timestamps
    end
  end
end

#to run, write in terminal rails db:migrate