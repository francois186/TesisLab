class TagController < ApplicationController

  def reuniones
    @resultado = Tag.new.dar_reuniones_de_tag(params[:tag])
    @@var = params[:tag]
  end

  def fuentes
    @resultado = Tag.new.dar_fuentes_de_tag(@@var)
  end

  def archivos
    @resultado = Tag.new.dar_archivos_de_tag(@@var)
  end

  def temas
    @resultado = Tag.new.dar_temas_de_tag(@@var)
  end

  def compromisos
    @resultado = Tag.new.dar_compromisos_de_tag(@@var)
  end

  def buscar
  end

  def new
  end

  def create
    @tag = Tag.new
    @tag.NOMBRE = params[:nombre]
    @tag.DESCRIPCION = params[:desc]

    if @tag.save
      redirect_to '/tag/confirma'
    else
      render 'new'
    end
  end

  def dar_objetos
    Tag.new.dar_objetos(params[:tipo])
  end

  def conf
    if params[:eltipo] == 'Temas'
      Tag.new.asignar_tag_tema(params[:c], params[:eltag])
    elsif params[:eltipo] == 'Reuniones'
      Tag.new.asignar_tag_reunion(params[:c], params[:eltag])
    elsif params[:eltipo] == 'Fuentes'
      Tag.new.asignar_tag_fuente(params[:c], params[:eltag])
    elsif params[:eltipo] == 'Compromisos'
      Tag.new.asignar_tag_compromiso(params[:c], params[:eltag])
    else
      Tag.new.asignar_tag_archivo(params[:c], params[:eltag])
    end
  end

end
