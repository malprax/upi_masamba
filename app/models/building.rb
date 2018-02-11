require 'csv'
class Building < ApplicationRecord
  scope :cari_pemilik, -> (query){where("lower(pemilik) like lower(?) ", "%#{query}%")}

  attr_accessor :permanen, :semi_permanen, :darurat, :rumah_tinggal, :ruko, :kantor, :gudang, :dan_lain_lain, :ada_sertifikat_tanah, :tidak_ada_sertifikat_tanah, :ada_imb_bangunan, :tidak_ada_imb_bangunan

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    # spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      building = find_by_id(row["id"]) || new
      building.attributes = row.to_hash
      building.attributes = spreadsheet.row(i).to_hash
      building.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when '.csv' then Roo::CSV.new(file.path, nil, :ignore)
    when '.xls' then Roo::Excel.new(file.path, nil, :ignore)
    when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.to_csv(options={})
    desired_columns = ["id", "pemilik", "created_at"]
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |building|
        csv << building.attributes.values_at(*desired_columns)
      end
    end
  end

  def ada_imb_bangunan
    self.ada_imb = "ADA" if self.ada_imb == true
  end

  def tidak_ada_imb_bangunan
    self.ada_imb = "TDK" if self.ada_imb == false
  end

  def ada_sertifikat_tanah
    self.ada_sertifikat_tanah = "ADA" if self.ada_sertifikat == true
  end

  def tidak_ada_sertifikat_tanah
    self.tidak_ada_sertifikat_tanah = "TDK" if self.ada_sertifikat == false
  end

  def permanen
      self.permanen = "P" if self.jenis == "Permanen"
  end

  def semi_permanen
      self.semi_permanen = "SP" if self.jenis == "Semi Permanen"
  end

  def darurat
      self.darurat = "DR" if self.jenis == "Darurat"
  end

  def rumah_tinggal
    self.luas if self.fungsi == "Rumah Tinggal"
  end

  def ruko
    self.luas if self.fungsi == "Ruko"
  end

  def kantor
    self.luas if self.fungsi == "Kantor"
  end

  def gudang
    self.luas if self.fungsi == "Gudang"
  end

  def dan_lain_lain
    self.luas if self.fungsi == "Dll"
  end

  # def self.open_spreadsheet(file)
  #   case File.extname(file.original_filename)
  #   when ".csv" then Roo::CSV.new(file.path, nil, :ignore)
  #   when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  #   when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  #   else raise "Unknown file type: #{file.original_filename}"
  #   end
  # end
end

# where("lower(pemilik) like lower(?) or lower(email) like lower(?) or stambuk like ? ", "%#{query}%", "%#{query}%", "%#{query}%")
