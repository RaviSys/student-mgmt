class RemoveAddressFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :address, :string
  end
end
