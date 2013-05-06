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

  def ag_compromiso
    puts '--------------'
    puts 'id: ' + params[:id]
    puts '--------------'
    puts 'el tag: ' +params[:tg]
    puts '--------------'
    #if Tag.new.asignar_tag_compromiso(@x, params[:tg])
    #  alert('Se ha creado el tag!')
    #else
    #  alert('No se ha podido crear el tag')
    #end
    redirect_to '/compromisos/list'
  end

end
