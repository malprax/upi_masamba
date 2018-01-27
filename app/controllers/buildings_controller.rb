class BuildingsController < ApplicationController
  def index
    @buildings = Building.order(:created_at)
  end

  private
  def set_building
    #code
  end
  def building_params
    params.require(:building).permit(:pemilik, :jenis, :tahun, :lantai, :luas, :jenis_jalan, :ada_sertifikat, :ada_imb, :notes, :desa_id, :year_id, :kecamatan_id, :kelurahan_id, :dusun_id, :pencatat_id)
  end
end
