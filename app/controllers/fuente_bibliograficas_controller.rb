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

  def collect_temas
    @temas=Tema.select();
  end
end