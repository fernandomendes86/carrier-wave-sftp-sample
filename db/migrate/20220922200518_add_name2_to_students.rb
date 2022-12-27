class AddName2ToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :name2, :string
  end
end
