class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
    t.string :name
    t.string :specialty
    t.string :salary
    t.integer :hospital_id
  
  end
  end
end
