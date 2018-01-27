class CreateDesas < ActiveRecord::Migration[5.1]
  def change
    create_table :desas do |t|
      t.string :nama
      t.string :kode

      t.timestamps
    end
  end
end
