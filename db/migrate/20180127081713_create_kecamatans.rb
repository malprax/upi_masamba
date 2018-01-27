class CreateKecamatans < ActiveRecord::Migration[5.1]
  def change
    create_table :kecamatans do |t|
      t.string :nama
      t.string :kode

      t.timestamps
    end
  end
end
