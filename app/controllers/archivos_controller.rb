class ArchivosController < ApplicationController

  def create
    @arch = Archivo.new

    @arch.NOMBRE = params[:name]
    @arch.ID_TESIS = 1     #FALTA DEFINIR!!!!!!!!!!!!!!!!
    @arch.FECHA_SUBIDA = Date.today

    uploaded_io = params[:dataFile]
    path = Rails.root.join('public', 'uploads', uploaded_io.original_filename);
    File.open(path, 'wb:ASCII-8BIT') do |file|
      file.write(uploaded_io.read)
    end

    realPath = File.absolute_path(path).split('public/')[1]
    @arch.PATH = realPath
    @arch.save

    redirect_to '/archivos/confirmacion'
  end

  def new
    @arch = Archivo.new
  end

  def confirmacion

  end

end
