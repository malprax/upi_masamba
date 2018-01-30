class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :pemilik
      t.string :jenis
      t.string :tahun
      t.string :lantai
      t.string :fungsi
      t.string :luas
      t.string :jenis_jalan
      t.boolean :ada_sertifikat
      t.string :tahun_sertifikat
      t.boolean :ada_imb
      t.string :notes
      t.integer :desa_id
      t.integer :year_id
      t.integer :kecamatan_id
      t.integer :kelurahan_id
      t.integer :dusun_id
      t.string :foto_lokasi
      t.integer :pencatat_id
      t.timestamps
    end
  end
end
