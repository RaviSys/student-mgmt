class AddAttrsToStudents < ActiveRecord::Migration[6.1]
  def up
    add_column :students, :dob, :date
    add_column :students, :age, :integer
    add_column :students, :address, :string
    add_column :students, :contact, :string 
  end

  def down
    remove_column :students, :dob, :date
    remove_column :students, :age, :integer
    remove_column :students, :address, :string
    remove_column :students, :contact, :string 
  end
end
