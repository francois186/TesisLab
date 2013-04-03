class TesisController < ApplicationController

  def show
    @tesises= Tesi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tesises }
    end
  end

  def creartesis
    @idprofe=params[:user_id]
    @rol=params[:user_rol ]
    @nombre=  params[:nombre]
    @descripcion=  params[:descripcion]

     Tesi.create(:NOMBRE=>@nombre,:DESCRIPCION=>@descripcion,:PROFESOR_ID=>@idprofe,:FECHA_INICIO=>Time.now.inspect)


  end
end
