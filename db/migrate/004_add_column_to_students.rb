class AddColumnToStudents < ActiveRecord::Migration[4.2]
    def change
        add_column :students, :email_address, :string
    end
end
