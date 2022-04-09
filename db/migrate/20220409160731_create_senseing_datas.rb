class CreateSenseingDatas < ActiveRecord::Migration[5.2]
  def change
    create_table(:senseing_datas) do |t|
      t.integer :data_type,              null: false
      t.integer :num_int_one, null: false
      t.integer :num_int_two, null: false
      t.string :num_string_one, null: false
      t.string :num_string_two, null: false


      t.timestamps
    end
  end
end
