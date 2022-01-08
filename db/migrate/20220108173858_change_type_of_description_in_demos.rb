class ChangeTypeOfDescriptionInDemos < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do 
        change_column :demos, :description, :text
      end
      dir.up do 
        change_column :demos, :description, :string
      end
    end
  end
end
