class AddAttrsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :dob, :date
    add_column :students, :age, :integer
    add_column :students, :address, :string
    add_column :students, :contact, :string 
  end
end
