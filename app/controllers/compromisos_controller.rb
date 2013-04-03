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

end
