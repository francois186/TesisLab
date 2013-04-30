class CompromisosController < ApplicationController
  def list
    @lista = Compromiso.new.compromisos_con_estudiantes
    puts @lista
  end

  def compromiso_estudiante
    @compromisos = Compromiso.new.consultar_compromisos_estudiante(params[:CODIGO])
  end

  def new
    @compromiso = Compromiso.new
  end
  def create
    @compromiso = Compromiso.new(params[:compromiso])
    if @compromiso.save
      redirect_to '/compromisos/list'
    else
      render 'new'
    end

  end

  def edit
    @compromiso = Compromiso.find params[:id]
  end

  def update
    @compromiso = Compromiso.find params[:id]
    if @compromiso.update_attributes params[:compromiso]
      redirect_to '/compromisos/list'
    else
      render 'edit'
    end
  end

end
