class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.string :f_name
      t.string :l_name
      t.string :tel

      t.timestamps
    end
  end
end
