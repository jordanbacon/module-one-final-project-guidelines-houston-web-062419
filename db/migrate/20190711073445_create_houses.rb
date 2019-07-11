class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :ideal
      t.string :founder
    end
     
  end
end
