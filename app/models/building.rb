class Building < ApplicationRecord
  scope :cari_pemilik, -> (query){where("lower(pemilik) like lower(?) ", "%#{query}%")}

  attr_accessor :jenis_bangunan

  def jenis_bangunan
      if self.jenis == "Permanen"
        self.jenis_bangunan = "P"
      elsif self.jenis == "Semi Permanen"
        self.jenis_bangunan = "SP"
      elsif self.jenis == "Darurat"
        self.jenis_bangunan = "DR"
      end
  end

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    # header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[spreadsheet.row(i)].transpose]
      building = find_by(id: row["id"]) || new
      building.attributes = row.to_hash
      building.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
end

# where("lower(pemilik) like lower(?) or lower(email) like lower(?) or stambuk like ? ", "%#{query}%", "%#{query}%", "%#{query}%")
