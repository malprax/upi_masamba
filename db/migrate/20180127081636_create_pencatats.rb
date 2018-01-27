class CreatePencatats < ActiveRecord::Migration[5.1]
  def change
    create_table :pencatats do |t|
      t.string :nama
      t.string :kode

      t.timestamps
    end
  end
end
