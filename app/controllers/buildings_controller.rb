class BuildingsController < ApplicationController
  before_action :set_building, only: [:edit, :update, :destroy]

  def import
    Building.import(params[:file])
    redirect_to root_url, notice: "Data Berhasil Diupload"
  end

  def index
    @buildings = Building.order(:created_at).page(params[:page]).per(10)
    @buildings = @buildings.cari_pemilik(params[:cari_pemilik])
    respond_to do |format|
      format.html
      # format.xlsx
      format.xls
      format.csv{send_data @buildings}
    end
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    respond_to do |format|
      if @building.save
        format.html {redirect_to buildings_path, notice: "Data Berhasil Dibuat"}
      else
        format.html html{redirect_to @buildings, notice: "Data Gagal Dibuat"}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html {redirect_to buildings_path, notice: "Data Berhasil Dibuat"}
      else
        format.html html{redirect_to @buildings, notice: "Data Gagal Dibuat"}
      end
    end
  end

  def destroy
    @building.delete
    respond_to do |format|
      format.html {redirect_to buildings_path, notice: "Data Berhasil Dibuat"}
    end
  end

  private
  def set_building
    @building = Building.find(params[:id])
  end
  def building_params
    params.require(:building).permit(:pemilik, :jenis, :tahun, :lantai, :fungsi, :luas, :jenis_jalan, :ada_sertifikat, :tahun_sertifikat, :ada_imb, :notes, :desa_id, :year_id, :kecamatan_id, :kelurahan_id, :dusun_id, :pencatat_id, :foto_lokasi)
  end
end
