class CreateValues < ActiveRecord::Migration[5.0]
  def change
    create_table :values do |t|
      t.string :ideal
      t.integer :student_id
      t.integer :house_id
      t.string :description
    end
  end
end
