class FuenteBibliograficasController < ApplicationController
  def list
    @fuentes_bibliograficas = FuenteBibliografica.all
  end
  def new
    @fuente_bibliografica = FuenteBibliografica.new
  end
  def create
    @fuente_bibliografica = FuenteBibliografica.new(params[:fuente_bibliografica])
    if @fuente_bibliografica.save
      redirect_to '/fuente_bibliograficas/list'
    else
      render 'new'
    end
  end

  def showanotaciones
    @anotaciones = Anotacion.find(params[:fuenteid])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anotaciones }
    end
  end
end