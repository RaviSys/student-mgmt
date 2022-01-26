class RemoveExtraFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :dob, :date
    remove_column :students, :age, :integer
    remove_column :students, :address, :string
    remove_column :students, :contact, :string
  end
end
